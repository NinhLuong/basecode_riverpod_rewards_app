import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magic_rewards/config/env/app_env_config.dart';
import 'package:magic_rewards/core/data/datasources/remote/dio_interceptors/error_interceptor.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/shared/services/network/network_connectivity_service.dart';

/// Provider for the main Dio instance with enhanced error handling
final dioProvider = Provider<Dio>((ref) {
  L.info('Initializing Dio with network-aware configuration');
  
  final dio = Dio();
  
  // Configure base options
  dio.options = BaseOptions(
    baseUrl: AppEnvConfig.baseUrl,
    connectTimeout: const Duration(milliseconds: 30000),
    sendTimeout: const Duration(milliseconds: 30000),
    receiveTimeout: const Duration(milliseconds: 30000),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  );

  // Add network-aware error interceptor
  dio.interceptors.add(ErrorInterceptor());

  // Add request logging interceptor (only in debug mode)
  if (AppEnvConfig.env == Environment.dev) {
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: false,
        error: true,
        logPrint: (object) => L.network(object.toString()),
      ),
    );
  }

  // Initialize network connectivity service
  NetworkConnectivityService.instance.initialize();

  L.info('Dio configuration completed with network awareness');
  return dio;
});

/// Provider for Dio instance specifically configured for file uploads
final uploadDioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  
  dio.options = BaseOptions(
    baseUrl: AppEnvConfig.baseUrl,
    connectTimeout: const Duration(milliseconds: 60000), // Longer timeout for uploads
    sendTimeout: const Duration(milliseconds: 120000),   // Extended send timeout
    receiveTimeout: const Duration(milliseconds: 60000),
    headers: {
      'Content-Type': 'multipart/form-data',
      'Accept': 'application/json',
    },
  );

  // Add same error handling for uploads
  dio.interceptors.add(ErrorInterceptor());

  return dio;
});

/// Provider that monitors network connectivity and provides Dio instance accordingly
final networkAwareDioProvider = Provider<Dio>((ref) {
  final dio = ref.watch(dioProvider);
  final networkService = NetworkConnectivityService.instance;
  
  // Add interceptor to block requests when offline
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        if (!networkService.isConnected) {
          L.warning('Blocking request due to no network connectivity: ${options.uri}');
          handler.reject(
            DioException(
              requestOptions: options,
              type: DioExceptionType.connectionError,
              message: 'No internet connection',
            ),
          );
          return;
        }
        handler.next(options);
      },
    ),
  );
  
  return dio;
});
