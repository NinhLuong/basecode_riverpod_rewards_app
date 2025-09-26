import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/shared/services/network/network_connectivity_service.dart';

import '../../core/data/models/error_message_model.dart';
import 'exception.dart';
import 'failure.dart';

/// The method of type: [FutureFunction] expresses a waiting condition of type Generic
/// The method of type: [RequestFunction] expresses a waiting condition of type Dio [Response]
typedef FutureFunction<T> = Future<T> Function();
typedef RequestFunction<T> = Future<Response<T>> Function();

/// class [ErrorsHandler] defaine as Global Exception Handler,
/// [exceptionThrower] handles throw cases of exception according to the application's use cases,
/// [handleEither] handles possible errors and converting to either form.

class ErrorsHandler {
  /// Network-aware exception handler that provides immediate error feedback
  /// Checks network connectivity before making requests to prevent infinite loading
  static Future<AppResponse> exceptionThrower(RequestFunction function) async {
    final networkService = NetworkConnectivityService.instance;
    
    try {
      // Check network connectivity before making request
      final isConnected = await networkService.checkConnectivity();
      if (!isConnected) {
        LoggerService.warning('Request blocked: No network connectivity');
        throw NoInternetException();
      }
      
      LoggerService.network('Making API request...');
      
      /// call Future function and return [AppResponse]
      final response = await function();
      final AppResponse appResponse = AppResponse.fromDioResponse(response);
      
      LoggerService.network('API request completed with status: ${appResponse.statusCode}');
      
      // Handle server-side error responses
      if (appResponse.data?["error"] ?? false) {
        final errorCode = appResponse.data?['error_code'];
        LoggerService.warning('API returned error response - Error code: $errorCode');
        
        if (errorCode == 101) {
          LoggerService.auth('Session expired - throwing SessionExpiredException');
          throw SessionExpiredException();
        }
        
        LoggerService.error('Server error occurred', ServerException(ErrorMessageModel.fromJson(response)));
        throw ServerException(ErrorMessageModel.fromJson(response));
      }
      
      return appResponse;
    } on DioException catch (e) {
      LoggerService.error('DioException occurred: ${e.type}', e);
      
      // Handle server error responses with data
      if (e.response != null && e.response!.data is Map<String, dynamic>) {
        LoggerService.network('Server returned error response with data: ${e.response?.statusCode}');
        throw ServerException(ErrorMessageModel.fromJson(e.response!));
      }

      // Handle specific DioException types that may not be caught by interceptor
      if (_isNetworkRelatedDioException(e)) {
        LoggerService.warning('Network-related DioException detected: ${e.type}');
        throw NoInternetException();
      }

      // Handle unknown exceptions with responses
      if (e.response != null) {
        LoggerService.error('Unknown DioException with response: ${e.response?.statusCode}', e);
        throw UnknownException(message: e.message);
      }

      // Default to network error for unhandled DioExceptions
      LoggerService.warning('Unhandled DioException, treating as network error');
      throw NoInternetException();
    } catch (e, stackTrace) {
      LoggerService.detailedError(
        'Unexpected exception in API call',
        e,
        stackTrace,
        {
          'API URL': 'Check the specific API endpoint in logs above',
          'Request Method': 'Check the HTTP method in logs above',
          'Exception Location': 'API Service Layer',
          'Network Status': networkService.isConnected ? 'Connected' : 'Disconnected',
        },
      );
      
      // Handle JSON parsing errors
      if (e is TypeError) {
        LoggerService.parsingError(
          'JSON parsing error occurred during API response processing',
          e,
          stackTrace,
          'Check API response data in logs above',
          null, // We don't know the specific model type here
        );
        throw ParsingException(parsingMessage: e.toString());
      }

      rethrow;
    }
  }

  /// Check if DioException is network-related
  static bool _isNetworkRelatedDioException(DioException e) {
    return [
      DioExceptionType.connectionTimeout,
      DioExceptionType.sendTimeout,
      DioExceptionType.receiveTimeout,
      DioExceptionType.connectionError,
    ].contains(e.type);
  }

  // this function check possible exceptions and return either (left as Failure , right as Type you generic send)
  static Future<Either<Failure, T>>
      handleEither<T extends BaseEntity, M extends BaseModel>(
    FutureFunction<M> future,
  ) async {
    try {
      LoggerService.debug('Executing use case operation...');
      
      /// first call your [FutureFunction] function
      final result = await future();
      
      LoggerService.debug('Use case operation completed successfully');
      return Right(result.toEntity() as T);
    } catch (e, stackTrace) {
      /// then catch any errors + check types then return [Left] appropriate [Failure]
      LoggerService.detailedError(
        'Use case operation failed with comprehensive analysis',
        e,
        stackTrace,
        {
          'Entity Type (T)': '$T',
          'Model Type (M)': '$M',
          'Operation': 'Use Case Execution',
          'Layer': 'Domain Layer',
        },
      );
      
      final failure = failureThrower(e, stackTrace);
      LoggerService.warning('Converted exception to failure: ${failure.runtimeType} - ${failure.message}');
      
      return Left(failure);
    }
  }

  static Failure failureThrower(Object e, [StackTrace? stackTrace]) {
    LoggerService.debug('Converting exception to failure: ${e.runtimeType}');
    
    if (e is ServerException) {
      LoggerService.error(
        'Server exception details:\n'
        'Status Code: ${e.errorMessageModel.statusCode}\n'
        'Status Message: ${e.errorMessageModel.statusMessage}\n'
        'Exception: $e',
        e,
        stackTrace,
      );
      return ServerFailure(
        e.errorMessageModel.statusMessage,
        statusCode: e.errorMessageModel.statusCode,
      );
    }
    if (e is NoInternetException) {
      LoggerService.warning('No internet connection exception occurred');
      LoggerService.error('No Internet Exception Stack Trace', e, stackTrace);
      return NoInternetFailure();
    }
    if (e is UnknownException) {
      LoggerService.error(
        'Unknown exception occurred with details:\n'
        'Message: ${e.message}\n'
        'Exception: $e',
        e,
        stackTrace,
      );
      return UnknownFailure();
    }
    if (e is ForceUpdateException) {
      LoggerService.warning('Force update required: ${e.message}');
      LoggerService.error('Force Update Exception Stack Trace', e, stackTrace);
      return ForceUpdateFailure();
    }
    if (e is AppUnderMaintenanceException) {
      LoggerService.warning('App under maintenance: ${e.message}');
      LoggerService.error('App Under Maintenance Exception Stack Trace', e, stackTrace);
      return AppUnderMaintenanceFailure();
    }
    if (e is SessionExpiredException) {
      LoggerService.auth('Session expired exception: ${e.message}');
      LoggerService.error('Session Expired Exception Stack Trace', e, stackTrace);
      return SessionExpiredFailure();
    }
    if (e is ParsingException || e is TypeError) {
      final parsingMessage = e is ParsingException ? e.parsingMessage : e.toString();
      LoggerService.parsingError(
        'Parsing exception occurred during object conversion',
        e,
        stackTrace,
        'Data parsing failed - check JSON structure and model annotations',
        null, // Model type not available in this context
      );
      return ParsingFailure(parsingMessage: parsingMessage);
    }
    
    LoggerService.error(
      'Unhandled exception type with full context:\n'
      'Type: ${e.runtimeType}\n'
      'Exception: $e\n'
      'toString(): ${e.toString()}',
      e,
      stackTrace,
    );
    return Failure(e.toString());
  }
}
