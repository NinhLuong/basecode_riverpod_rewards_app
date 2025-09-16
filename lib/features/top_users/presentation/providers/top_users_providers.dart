import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';
import 'package:magic_rewards/features/top_users/domain/parameters/top_users_parameters.dart';
import 'package:magic_rewards/features/top_users/domain/usecases/get_top_users_usecase.dart';

part 'top_users_providers.g.dart';

// Use case provider
@riverpod
GetTopUsersUseCase getTopUsersUseCase(Ref ref) {
  return getIt<GetTopUsersUseCase>();
}

// Top users notifier
@riverpod
class TopUsersNotifier extends _$TopUsersNotifier {
  @override
  FutureOr<TopUsersEntity> build() async {
    return fetchTopUsers();
  }

  Future<TopUsersEntity> fetchTopUsers({bool halfMonth = false}) async {
    final useCase = ref.read(getTopUsersUseCaseProvider);
    final params = TopUsersParameters(halfMonth: halfMonth);
    final result = await useCase.call(params: params);
    
    return result.fold(
      (failure) => throw failure,
      (topUsers) => topUsers,
    );
  }

  Future<void> refresh({bool halfMonth = false}) async {
    state = const AsyncLoading();
    try {
      final result = await fetchTopUsers(halfMonth: halfMonth);
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  Future<void> togglePeriod() async {
    final current = state.value;
    if (current == null) return;
    
    // Toggle between full month and half month
    final isCurrentlyHalfMonth = state.value != null;
    await refresh(halfMonth: !isCurrentlyHalfMonth);
  }
}

// Convenience providers
@riverpod
List<UserRankEntity> topThreeUsers(Ref ref) {
  final asyncValue = ref.watch(topUsersProvider);
  return asyncValue.value?.topThree ?? [];
}

@riverpod
List<UserRankEntity> restUsers(Ref ref) {
  final asyncValue = ref.watch(topUsersProvider);
  return asyncValue.value?.rest ?? [];
}

@riverpod
UserRankEntity? myRank(Ref ref) {
  final asyncValue = ref.watch(topUsersProvider);
  return asyncValue.value?.myRank;
}

@riverpod
double maxPoints(Ref ref) {
  final asyncValue = ref.watch(topUsersProvider);
  return asyncValue.value?.maxPoints ?? 0.0;
}

@riverpod
bool isTopUsersLoading(Ref ref) {
  final asyncValue = ref.watch(topUsersProvider);
  return asyncValue.isLoading;
}

@riverpod
String? topUsersErrorMessage(Ref ref) {
  final asyncValue = ref.watch(topUsersProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}
