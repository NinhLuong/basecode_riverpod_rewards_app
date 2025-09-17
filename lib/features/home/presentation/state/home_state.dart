import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/entities/home_with_user_entity.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeInitial;
  const factory HomeState.loading() = _HomeLoading;
  const factory HomeState.success(HomeWithUserEntity data) = _HomeSuccess;
  const factory HomeState.error(String message) = _HomeError;
  const factory HomeState.refreshing(HomeWithUserEntity currentData) = _HomeRefreshing;
}

extension HomeStateX on HomeState {
  bool get isInitial => this is _HomeInitial;
  bool get isLoading => this is _HomeLoading;
  bool get isSuccess => this is _HomeSuccess;
  bool get isError => this is _HomeError;
  bool get isRefreshing => this is _HomeRefreshing;

  HomeWithUserEntity? get data => mapOrNull(
        success: (state) => state.data,
        refreshing: (state) => state.currentData,
      );

  String? get errorMessage => mapOrNull(error: (state) => state.message);
  bool get hasData => data != null;

  // Convenience getters for common data access
  HomeEntity? get homeData => data?.homeData;
  String get userBalance => data?.balance ?? '--';
  List<OfferWallEntity> get offerWalls => data?.offerWalls ?? [];
  String get currentUserName => data?.username ?? '';
  String get userFullName => data?.fullName ?? '';
  String get userEmail => data?.email ?? '';
  String get userPoints => data?.points ?? '0';
  String get userRedeemedPoints => data?.redeemedPoints ?? '0';
}
