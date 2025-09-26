import 'package:injectable/injectable.dart';
import 'package:magic_rewards/config/errors/exception.dart';
import 'package:magic_rewards/config/secret/api/apis_urls.dart';
import 'package:magic_rewards/core/data/datasources/remote/api/api_services.dart';
import 'package:magic_rewards/core/data/models/error_message_model.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/features/home/data/models/home_model.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';
abstract class IHomeDataSource {
  Future<HomeModel> getHome(HomeParameters parameters);
}

@LazySingleton(as: IHomeDataSource)
class HomeRemoteDataSourceImp extends IHomeDataSource {
  final ApiServices _apiServices;

  HomeRemoteDataSourceImp(this._apiServices);

  @override
  Future<HomeModel> getHome(HomeParameters parameters) async {
      final AppResponse appResponse = await _apiServices.post(
        ApisUrls.home,
        data: parameters.toJson(),
      );

      // Validate response structure
      if (appResponse.data == null) {
        throw ServerException(
          const ErrorMessageModel(statusMessage: 'Invalid response data'),
        );
      }

      return HomeModel.fromJson(appResponse.data);
  }
}
