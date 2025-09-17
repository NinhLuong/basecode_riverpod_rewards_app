import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/entities/home_with_user_entity.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';
import 'package:magic_rewards/features/home/domain/usecases/get_home_usecase.dart';
import 'package:magic_rewards/features/auth/data/datasources/local/user_local_data_source.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/home/presentation/state/home_state.dart';

part 'home_providers.g.dart';

// Use case providers
@riverpod
GetHomeUseCase getHomeUseCase(Ref ref) {
  return getIt<GetHomeUseCase>();
}

@riverpod
UserLocalDataSource homeUserLocalDataSource(Ref ref) {
  return getIt<UserLocalDataSource>();
}

// Main home notifier
@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  HomeState build() {
    // Auto-fetch on build
    _fetchHomeWithUser();
    return const HomeState.initial();
  }

  Future<void> _fetchHomeWithUser() async {
    state = const HomeState.loading();

    try {
      final getHomeUseCase = ref.read(getHomeUseCaseProvider);
      final userLocalDataSource = ref.read(homeUserLocalDataSourceProvider);

      // Fetch both home data and user data concurrently
      final results = await Future.wait([
        getHomeUseCase.call(params: HomeParameters()).then((result) => result),
        userLocalDataSource.getUserData(),
      ]);

      final homeResult = results[0] as dynamic;
      final userData = results[1] as UserEntity?;

      if (userData == null) {
        state = const HomeState.error('User data not found');
        return;
      }

      homeResult.fold(
        (failure) => state = HomeState.error(failure.toString()),
        (homeData) {
          final homeWithUser = HomeWithUserEntity(
            homeData: homeData,
            userData: userData,
          );
          state = HomeState.success(homeWithUser);
        },
      );
    } catch (error) {
      state = HomeState.error(error.toString());
    }
  }

  Future<void> refresh() async {
    final currentData = state.data;
    if (currentData != null) {
      state = HomeState.refreshing(currentData);
    } else {
      state = const HomeState.loading();
    }

    try {
      await _fetchHomeWithUser();
    } catch (error) {
      state = HomeState.error(error.toString());
    }
  }
}

// Convenience providers for easy access to specific data
@riverpod
HomeEntity? homeData(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.homeData;
}

@riverpod
UserEntity? homeUserData(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.data?.userData;
}

@riverpod
String userBalance(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.userBalance;
}

@riverpod
List<OfferWallEntity> offerWalls(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.offerWalls;
}

@riverpod
String currentUserName(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.currentUserName;
}

@riverpod
String userFullName(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.userFullName;
}

@riverpod
String userEmail(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.userEmail;
}

@riverpod
String userPoints(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.userPoints;
}

@riverpod
String userRedeemedPoints(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.userRedeemedPoints;
}

@riverpod
bool isHomeLoading(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.isLoading;
}

@riverpod
bool hasHomeError(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.isError;
}

@riverpod
String? homeErrorMessage(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.errorMessage;
}

@riverpod
bool hasHomeData(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.hasData;
}

@riverpod
bool isHomeRefreshing(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.isRefreshing;
}

@riverpod
HomeWithUserEntity? homeWithUserData(Ref ref) {
  final state = ref.watch(homeProvider);
  return state.data;
}
