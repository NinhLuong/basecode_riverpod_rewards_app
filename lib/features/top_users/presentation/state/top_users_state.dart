import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';

part 'top_users_state.freezed.dart';

@freezed
sealed class TopUsersState with _$TopUsersState {
  const factory TopUsersState.initial() = _TopUsersInitial;
  const factory TopUsersState.loading() = _TopUsersLoading;
  const factory TopUsersState.success(TopUsersEntity data) = _TopUsersSuccess;
  const factory TopUsersState.error(Failure failure) = _TopUsersError;
  const factory TopUsersState.refreshing(TopUsersEntity currentData) = _TopUsersRefreshing;
}

extension TopUsersStateX on TopUsersState {
  bool get isInitial => this is _TopUsersInitial;
  bool get isLoading => this is _TopUsersLoading;
  bool get isSuccess => this is _TopUsersSuccess;
  bool get isError => this is _TopUsersError;
  bool get isRefreshing => this is _TopUsersRefreshing;

  TopUsersEntity? get data => mapOrNull(
        success: (state) => state.data,
        refreshing: (state) => state.currentData,
      );

  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );

  String? get errorMessage => failure?.message;
  bool get hasData => data != null;

  // Convenience getters for common top users data access
  List<UserRankEntity> get topThreeUsers => data?.topThree ?? [];
  List<UserRankEntity> get restUsers => data?.rest ?? [];
  UserRankEntity? get myRank => data?.myRank;
  double get maxPoints => data?.maxPoints ?? 0.0;
}
