import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/auth/domain/entities/check_email_entity.dart';
import 'package:magic_rewards/features/auth/domain/parameters/login_parameters.dart';
import 'package:magic_rewards/features/auth/domain/parameters/register_parameters.dart';
import 'package:magic_rewards/features/auth/domain/parameters/check_email_parameters.dart';
import 'package:magic_rewards/features/auth/domain/usecases/login_usecase.dart';
import 'package:magic_rewards/features/auth/domain/usecases/register_usecase.dart';
import 'package:magic_rewards/features/auth/domain/usecases/check_email_usecase.dart';
import 'package:magic_rewards/features/auth/data/datasources/local/user_local_data_source.dart';

part 'auth_providers.g.dart';

// Use case providers
@riverpod
LoginUseCase loginUseCase(Ref ref) {
  return getIt<LoginUseCase>();
}

@riverpod
RegisterUseCase registerUseCase(Ref ref) {
  return getIt<RegisterUseCase>();
}

@riverpod
CheckEmailUseCase checkEmailUseCase(Ref ref) {
  return getIt<CheckEmailUseCase>();
}

@riverpod
UserLocalDataSource userLocalDataSource(Ref ref) {
  return getIt<UserLocalDataSource>();
}

// Login state management
@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  FutureOr<UserEntity?> build() {
    return null;
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    state = const AsyncLoading();

    try {
      final loginUseCase = ref.read(loginUseCaseProvider);
      final params = LoginParameters(
        username: username,
        password: password,
      );

      final result = await loginUseCase.call(params: params);

      result.fold(
        (failure) => throw failure,
        (user) => state = AsyncData(user),
      );
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  void logout() {
    state = const AsyncData(null);
  }
}

// Register state management
@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  FutureOr<UserEntity?> build() {
    return null;
  }

  Future<void> register({
    required String email,
    required String fullName,
    required String password,
    required String userName,
    required String secondaryEmail,
  }) async {
    state = const AsyncLoading();

    try {
      final registerUseCase = ref.read(registerUseCaseProvider);
      final params = RegisterParameters(
        email: email,
        fullName: fullName,
        password: password,
        userName: userName,
        groupEmail: secondaryEmail,
      );

      final result = await registerUseCase.call(params: params);

      result.fold(
        (failure) => throw failure,
        (user) => state = AsyncData(user),
      );
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Email validation
@riverpod
class EmailCheckNotifier extends _$EmailCheckNotifier {
  @override
  FutureOr<CheckEmailEntity?> build() {
    return null;
  }

  Future<void> checkEmail(String email) async {
    state = const AsyncLoading();

    try {
      final checkEmailUseCase = ref.read(checkEmailUseCaseProvider);
      final params = CheckEmailParameters(email: email);

      final result = await checkEmailUseCase.call(params: params);

      result.fold(
        (failure) => throw failure,
        (emailResult) => state = AsyncData(emailResult),
      );
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Current user provider (manages authentication state)
@riverpod
class CurrentUserNotifier extends _$CurrentUserNotifier {
  @override
  FutureOr<UserEntity?> build() async {
    // Try to load user from local storage on app start
    try {
      final userLocalDataSource = ref.read(userLocalDataSourceProvider);
      final userData = await userLocalDataSource.getUserData();
      return userData;
    } catch (e) {
      return null;
    }
  }

  void setUser(UserEntity user) {
    state = AsyncData(user);
  }

  void clearUser() {
    state = const AsyncData(null);
  }

  bool get isLoggedIn {
    return state.value != null;
  }
}

// Convenience providers
@riverpod
bool isLoginLoading(Ref ref) {
  final asyncValue = ref.watch(loginProvider);
  return asyncValue.isLoading;
}

@riverpod
bool isRegisterLoading(Ref ref) {
  final asyncValue = ref.watch(registerProvider);
  return asyncValue.isLoading;
}

@riverpod
bool isEmailCheckLoading(Ref ref) {
  final asyncValue = ref.watch(emailCheckProvider);
  return asyncValue.isLoading;
}

@riverpod
String? loginErrorMessage(Ref ref) {
  final asyncValue = ref.watch(loginProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}

@riverpod
String? registerErrorMessage(Ref ref) {
  final asyncValue = ref.watch(registerProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}

@riverpod
String? emailCheckErrorMessage(Ref ref) {
  final asyncValue = ref.watch(emailCheckProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}

@riverpod
bool isUserAuthenticated(Ref ref) {
  final user = ref.watch(currentUserProvider).value;
  return user != null;
}

@riverpod
UserEntity? currentUserData(Ref ref) {
  return ref.watch(currentUserProvider).value;
}
