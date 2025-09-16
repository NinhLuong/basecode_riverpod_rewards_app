import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';
import 'package:magic_rewards/features/home/domain/entities/home_with_user_entity.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';
import 'package:magic_rewards/features/home/domain/usecases/get_home_usecase.dart';
import 'package:magic_rewards/features/auth/data/datasources/local/user_local_data_source.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';

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
  FutureOr<HomeWithUserEntity> build() async {
    return fetchHomeWithUser();
  }

  Future<HomeWithUserEntity> fetchHomeWithUser() async {
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
      throw const Failure('User data not found');
    }

    return homeResult.fold(
      (failure) => throw failure,
      (homeData) => HomeWithUserEntity(
        homeData: homeData,
        userData: userData,
      ),
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final result = await fetchHomeWithUser();
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Convenience providers for easy access to specific data
@riverpod
HomeEntity? homeData(Ref ref) {
  final homeWithUser = ref.watch(homeProvider).value;
  return homeWithUser?.homeData;
}

@riverpod
UserEntity? homeUserData(Ref ref) {
  final homeWithUser = ref.watch(homeProvider).value;
  return homeWithUser?.userData;
}

@riverpod
String userBalance(Ref ref) {
  final homeWithUser = ref.watch(homeProvider).value;
  return homeWithUser?.balance ?? '--';
}

@riverpod
List<OfferWallEntity> offerWalls(Ref ref) {
  final homeWithUser = ref.watch(homeProvider).value;
  return homeWithUser?.offerWalls ?? [];
}

@riverpod
String currentUserName(Ref ref) {
  final homeWithUser = ref.watch(homeProvider).value;
  return homeWithUser?.username ?? '';
}

@riverpod
String userFullName(Ref ref) {
  final homeWithUser = ref.watch(homeProvider).value;
  return homeWithUser?.fullName ?? '';
}

@riverpod
String userEmail(Ref ref) {
  final homeWithUser = ref.watch(homeProvider).value;
  return homeWithUser?.email ?? '';
}

@riverpod
String userPoints(Ref ref) {
  final homeWithUser = ref.watch(homeProvider).value;
  return homeWithUser?.points ?? '0';
}

@riverpod
String userRedeemedPoints(Ref ref) {
  final homeWithUser = ref.watch(homeProvider).value;
  return homeWithUser?.redeemedPoints ?? '0';
}

@riverpod
bool isHomeLoading(Ref ref) {
  final asyncValue = ref.watch(homeProvider);
  return asyncValue.isLoading;
}

@riverpod
bool hasHomeError(Ref ref) {
  final asyncValue = ref.watch(homeProvider);
  return asyncValue.hasError;
}

@riverpod
String? homeErrorMessage(Ref ref) {
  final asyncValue = ref.watch(homeProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}

@riverpod
bool hasHomeData(Ref ref) {
  final asyncValue = ref.watch(homeProvider);
  return asyncValue.hasValue && asyncValue.value != null;
}
