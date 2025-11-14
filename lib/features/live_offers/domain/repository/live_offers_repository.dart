import 'package:dartz/dartz.dart';
import 'package:riverpod_rewards/config/errors/failure.dart';
import 'package:riverpod_rewards/features/live_offers/domain/entities/live_offer_entity.dart';
import 'package:riverpod_rewards/features/live_offers/domain/parameters/live_offers_parameters.dart';

abstract class ILiveOffersRepository {
  Future<Either<Failure, LiveOffersEntity>> getLiveOffers(
      GetLiveOffersParameters parameters);
}
