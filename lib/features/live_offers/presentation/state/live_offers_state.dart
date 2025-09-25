import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/live_offers/domain/entities/live_offer_entity.dart';

part 'live_offers_state.freezed.dart';

@freezed
sealed class LiveOffersState with _$LiveOffersState {
  const factory LiveOffersState.initial() = _Initial;
  const factory LiveOffersState.loading() = _Loading;
  const factory LiveOffersState.success(LiveOffersEntity data) = _Success;
  const factory LiveOffersState.error(Failure failure) = _Error;
  const factory LiveOffersState.loadingMore(LiveOffersEntity currentData) = _LoadingMore;
}

extension LiveOffersStateX on LiveOffersState {
  bool get isInitial => this is _Initial;
  bool get isLoading => this is _Loading;
  bool get isSuccess => this is _Success;
  bool get isError => this is _Error;
  bool get isLoadingMore => this is _LoadingMore;

  LiveOffersEntity? get data => mapOrNull(
        success: (state) => state.data,
        loadingMore: (state) => state.currentData,
      );

  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );

  String? get errorMessage => failure?.message;
  bool get hasData => data != null && data!.liveOffers.isNotEmpty;
}