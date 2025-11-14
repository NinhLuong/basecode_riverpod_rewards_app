import 'package:injectable/injectable.dart';
import 'package:riverpod_rewards/config/secret/api/apis_urls.dart';
import 'package:riverpod_rewards/core/data/datasources/remote/api/api_services.dart';
import 'package:riverpod_rewards/core/data/repositories/app_response.dart';
import 'package:riverpod_rewards/features/live_offers/data/models/live_offers_model.dart';
import 'package:riverpod_rewards/features/live_offers/domain/parameters/live_offers_parameters.dart';
abstract class ILiveOffersDataSource {
  Future<LiveOffersModel> getLiveOffers(GetLiveOffersParameters parameters);
}

@LazySingleton(as: ILiveOffersDataSource)
class LiveOffersRemoteDataSourceImp extends ILiveOffersDataSource {
  final ApiServices _apiServices;

  LiveOffersRemoteDataSourceImp(this._apiServices);

  @override
  Future<LiveOffersModel> getLiveOffers(
      GetLiveOffersParameters parameters) async {
    AppResponse appResponse = await _apiServices
        .post(ApisUrls.liveOffers, data: parameters.toJson());
    return LiveOffersModel.fromJson(appResponse.data);
  }
}
