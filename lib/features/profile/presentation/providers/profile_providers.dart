import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/features/profile/domain/entities/profile_entity.dart';
import 'package:magic_rewards/features/profile/domain/parameters/profile_parameters.dart';
import 'package:magic_rewards/features/profile/domain/repository/profile_repository.dart';

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
  FutureOr<ProfileEntity> build() async {
    return fetchProfile();
  }

  Future<ProfileEntity> fetchProfile() async {
    final repository = ref.read(profileRepositoryProvider);
    final result = await repository.getProfile(ProfileParameters());
    
    return result.fold(
      (failure) => throw failure,
      (profile) => profile,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final result = await fetchProfile();
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Convenience providers
@riverpod
String userProfileBalance(Ref ref) {
  final asyncValue = ref.watch(profileProvider);
  return asyncValue.value?.balance ?? '--';
}

@riverpod
String profileRedeemedPoints(Ref ref) {
  final asyncValue = ref.watch(profileProvider);
  return asyncValue.value?.redeemedPoints ?? '0';
}

@riverpod
String profileTotalPoints(Ref ref) {
  final asyncValue = ref.watch(profileProvider);
  return asyncValue.value?.totalPoints ?? '0';
}

@riverpod
bool isProfileLoading(Ref ref) {
  final asyncValue = ref.watch(profileProvider);
  return asyncValue.isLoading;
}

@riverpod
String? profileErrorMessage(Ref ref) {
  final asyncValue = ref.watch(profileProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}
