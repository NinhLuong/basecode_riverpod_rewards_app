import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/config/errors/errors_handler.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';
import 'package:magic_rewards/features/top_users/domain/parameters/top_users_parameters.dart';
import 'package:magic_rewards/features/top_users/domain/usecases/get_top_users_usecase.dart';
import 'package:magic_rewards/features/top_users/presentation/state/top_users_state.dart';

part 'top_users_providers.g.dart';

// Use case provider
@riverpod
GetTopUsersUseCase getTopUsersUseCase(Ref ref) {
  return getIt<GetTopUsersUseCase>();
}

// Top users notifier
@riverpod
class TopUsersNotifier extends _$TopUsersNotifier {
  bool _isHalfMonth = false;

  @override
  TopUsersState build() {
    // Auto-fetch on build
    _fetchTopUsers();
    return const TopUsersState.initial();
  }

  Future<void> _fetchTopUsers({bool? halfMonth}) async {
    if (halfMonth != null) {
      _isHalfMonth = halfMonth;
    }
    
    state = const TopUsersState.loading();

    try {
      final useCase = ref.read(getTopUsersUseCaseProvider);
      final params = TopUsersParameters(halfMonth: _isHalfMonth);
      final result = await useCase.call(params: params);
      
      result.fold(
        (failure) => state = TopUsersState.error(failure),
        (topUsers) => state = TopUsersState.success(topUsers),
      );
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = TopUsersState.error(failure);
    }
  }

  Future<void> refresh({bool? halfMonth}) async {
    final currentData = state.data;
    if (currentData != null) {
      state = TopUsersState.refreshing(currentData);
    } else {
      state = const TopUsersState.loading();
    }

    try {
      await _fetchTopUsers(halfMonth: halfMonth);
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = TopUsersState.error(failure);
    }
  }

  Future<void> togglePeriod() async {
    await refresh(halfMonth: !_isHalfMonth);
  }

  bool get isHalfMonth => _isHalfMonth;
}

// Convenience providers
@riverpod
List<UserRankEntity> topThreeUsers(Ref ref) {
  final state = ref.watch(topUsersProvider);
  return state.topThreeUsers;
}

@riverpod
List<UserRankEntity> restUsers(Ref ref) {
  final state = ref.watch(topUsersProvider);
  return state.restUsers;
}

@riverpod
UserRankEntity? myRank(Ref ref) {
  final state = ref.watch(topUsersProvider);
  return state.myRank;
}

@riverpod
double maxPoints(Ref ref) {
  final state = ref.watch(topUsersProvider);
  return state.maxPoints;
}

@riverpod
bool isTopUsersLoading(Ref ref) {
  final state = ref.watch(topUsersProvider);
  return state.isLoading;
}

@riverpod
String? topUsersErrorMessage(Ref ref) {
  final state = ref.watch(topUsersProvider);
  return state.errorMessage;
}

@riverpod
bool hasTopUsersError(Ref ref) {
  final state = ref.watch(topUsersProvider);
  return state.isError;
}

@riverpod
bool hasTopUsersData(Ref ref) {
  final state = ref.watch(topUsersProvider);
  return state.hasData;
}

@riverpod
bool isTopUsersRefreshing(Ref ref) {
  final state = ref.watch(topUsersProvider);
  return state.isRefreshing;
}

@riverpod
TopUsersEntity? topUsersData(Ref ref) {
  final state = ref.watch(topUsersProvider);
  return state.data;
}

@riverpod
bool currentPeriodIsHalfMonth(Ref ref) {
  final notifier = ref.watch(topUsersProvider.notifier);
  return notifier.isHalfMonth;
}
