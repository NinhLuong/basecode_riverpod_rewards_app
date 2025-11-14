import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_rewards/config/di/injectable_config.dart';
import 'package:riverpod_rewards/config/errors/errors_handler.dart';
import 'package:riverpod_rewards/features/profile/domain/entities/profile_entity.dart';
import 'package:riverpod_rewards/features/profile/domain/parameters/profile_parameters.dart';
import 'package:riverpod_rewards/features/profile/domain/repository/profile_repository.dart';
import 'package:riverpod_rewards/features/profile/presentation/state/profile_state.dart';

part 'profile_providers.g.dart';

// Repository provider
@riverpod
ProfileRepository profileRepository(Ref ref) {
  return getIt<ProfileRepository>();
}

// Profile data notifier
@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  ProfileState build() {
    // Auto-fetch on build
    _fetchProfile();
    return const ProfileState.initial();
  }

  Future<void> _fetchProfile() async {
    state = const ProfileState.loading();

    try {
      final repository = ref.read(profileRepositoryProvider);
      final result = await repository.getProfile(ProfileParameters());
      
      result.fold(
        (failure) => state = ProfileState.error(failure),
        (profile) => state = ProfileState.success(profile),
      );
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = ProfileState.error(failure);
    }
  }

  Future<void> refresh() async {
    final currentData = state.data;
    if (currentData != null) {
      state = ProfileState.refreshing(currentData);
    } else {
      state = const ProfileState.loading();
    }

    try {
      await _fetchProfile();
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = ProfileState.error(failure);
    }
  }
}

// Convenience providers
@riverpod
String userProfileBalance(Ref ref) {
  final state = ref.watch(profileProvider);
  return state.userBalance;
}

@riverpod
String profileRedeemedPoints(Ref ref) {
  final state = ref.watch(profileProvider);
  return state.redeemedPoints;
}

@riverpod
String profileTotalPoints(Ref ref) {
  final state = ref.watch(profileProvider);
  return state.totalPoints;
}

@riverpod
bool isProfileLoading(Ref ref) {
  final state = ref.watch(profileProvider);
  return state.isLoading;
}

@riverpod
String? profileErrorMessage(Ref ref) {
  final state = ref.watch(profileProvider);
  return state.errorMessage;
}

@riverpod
bool hasProfileError(Ref ref) {
  final state = ref.watch(profileProvider);
  return state.isError;
}

@riverpod
bool hasProfileData(Ref ref) {
  final state = ref.watch(profileProvider);
  return state.hasData;
}

@riverpod
bool isProfileRefreshing(Ref ref) {
  final state = ref.watch(profileProvider);
  return state.isRefreshing;
}

@riverpod
ProfileEntity? profileData(Ref ref) {
  final state = ref.watch(profileProvider);
  return state.data;
}
