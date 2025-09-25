import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/profile/domain/entities/profile_entity.dart';

part 'profile_state.freezed.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileInitial;
  const factory ProfileState.loading() = _ProfileLoading;
  const factory ProfileState.success(ProfileEntity data) = _ProfileSuccess;
  const factory ProfileState.error(Failure failure) = _ProfileError;
  const factory ProfileState.refreshing(ProfileEntity currentData) = _ProfileRefreshing;
}

extension ProfileStateX on ProfileState {
  bool get isInitial => this is _ProfileInitial;
  bool get isLoading => this is _ProfileLoading;
  bool get isSuccess => this is _ProfileSuccess;
  bool get isError => this is _ProfileError;
  bool get isRefreshing => this is _ProfileRefreshing;

  ProfileEntity? get data => mapOrNull(
        success: (state) => state.data,
        refreshing: (state) => state.currentData,
      );

  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );

  String? get errorMessage => failure?.message;
  bool get hasData => data != null;

  // Convenience getters for common profile data access
  String get userBalance => data?.balance ?? '--';
  String get redeemedPoints => data?.redeemedPoints ?? '0';
  String get totalPoints => data?.totalPoints ?? '0';
}
