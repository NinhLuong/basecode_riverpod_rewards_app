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
import 'package:magic_rewards/features/auth/presentation/state/auth_state.dart';

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
  LoginState build() {
    return const LoginState.initial();
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    state = const LoginState.loading();

    try {
      final loginUseCase = ref.read(loginUseCaseProvider);
      final params = LoginParameters(
        username: username,
        password: password,
      );

      final result = await loginUseCase.call(params: params);

      result.fold(
        (failure) => state = LoginState.error(failure.toString()),
        (user) => state = LoginState.success(user),
      );
    } catch (error) {
      state = LoginState.error(error.toString());
    }
  }

  void reset() {
    state = const LoginState.initial();
  }
}

// Register state management
@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return const RegisterState.initial();
  }

  Future<void> register({
    required String email,
    required String fullName,
    required String password,
    required String userName,
    required String secondaryEmail,
  }) async {
    state = const RegisterState.loading();

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
        (failure) => state = RegisterState.error(failure.toString()),
        (user) => state = RegisterState.success(user),
      );
    } catch (error) {
      state = RegisterState.error(error.toString());
    }
  }

  void reset() {
    state = const RegisterState.initial();
  }
}

// Email validation
@riverpod
class EmailCheckNotifier extends _$EmailCheckNotifier {
  @override
  EmailCheckState build() {
    return const EmailCheckState.initial();
  }

  Future<void> checkEmail(String email) async {
    state = const EmailCheckState.loading();

    try {
      final checkEmailUseCase = ref.read(checkEmailUseCaseProvider);
      final params = CheckEmailParameters(email: email);

      final result = await checkEmailUseCase.call(params: params);

      result.fold(
        (failure) => state = EmailCheckState.error(failure.toString()),
        (emailResult) => state = EmailCheckState.success(emailResult),
      );
    } catch (error) {
      state = EmailCheckState.error(error.toString());
    }
  }

  void reset() {
    state = const EmailCheckState.initial();
  }
}

// Current user provider (manages authentication state)
@riverpod
class CurrentUserNotifier extends _$CurrentUserNotifier {
  @override
  CurrentUserState build() {
    // Delay initial load to allow splash screen to display
    _delayedLoadUserFromStorage();
    return const CurrentUserState.initial();
  }

  Future<void> _delayedLoadUserFromStorage() async {
    // Wait a bit to ensure splash screen shows first
    await Future.delayed(const Duration(milliseconds: 500));
    await _loadUserFromStorage();
  }

  Future<void> _loadUserFromStorage() async {
    state = const CurrentUserState.loading();
    try {
      final userLocalDataSource = ref.read(userLocalDataSourceProvider);
      final userData = await userLocalDataSource.getUserData();
      if (userData != null) {
        state = CurrentUserState.authenticated(userData);
      } else {
        state = const CurrentUserState.unauthenticated();
      }
    } catch (e) {
      state = const CurrentUserState.unauthenticated();
    }
  }

  /// Force immediate load (used when splash completes)
  Future<void> forceLoadUserFromStorage() async {
    await _loadUserFromStorage();
  }

  void setUser(UserEntity user) {
    state = CurrentUserState.authenticated(user);
  }

  void clearUser() {
    state = const CurrentUserState.unauthenticated();
  }

  bool get isLoggedIn {
    return state.isAuthenticated;
  }

  Future<void> refresh() async {
    await _loadUserFromStorage();
  }
}

// Convenience providers
@riverpod
bool isLoginLoading(Ref ref) {
  final state = ref.watch(loginProvider);
  return state.isLoading;
}

@riverpod
bool isRegisterLoading(Ref ref) {
  final state = ref.watch(registerProvider);
  return state.isLoading;
}

@riverpod
bool isEmailCheckLoading(Ref ref) {
  final state = ref.watch(emailCheckProvider);
  return state.isLoading;
}

@riverpod
String? loginErrorMessage(Ref ref) {
  final state = ref.watch(loginProvider);
  return state.errorMessage;
}

@riverpod
String? registerErrorMessage(Ref ref) {
  final state = ref.watch(registerProvider);
  return state.errorMessage;
}

@riverpod
String? emailCheckErrorMessage(Ref ref) {
  final state = ref.watch(emailCheckProvider);
  return state.errorMessage;
}

@riverpod
bool isUserAuthenticated(Ref ref) {
  final state = ref.watch(currentUserProvider);
  return state.isAuthenticated;
}

@riverpod
UserEntity? currentUserData(Ref ref) {
  final state = ref.watch(currentUserProvider);
  return state.user;
}

@riverpod
UserEntity? loginUserData(Ref ref) {
  final state = ref.watch(loginProvider);
  return state.user;
}

@riverpod
UserEntity? registerUserData(Ref ref) {
  final state = ref.watch(registerProvider);
  return state.user;
}

@riverpod
CheckEmailEntity? emailCheckResult(Ref ref) {
  final state = ref.watch(emailCheckProvider);
  return state.result;
}

@riverpod
bool hasLoginError(Ref ref) {
  final state = ref.watch(loginProvider);
  return state.isError;
}

@riverpod
bool hasRegisterError(Ref ref) {
  final state = ref.watch(registerProvider);
  return state.isError;
}

@riverpod
bool hasEmailCheckError(Ref ref) {
  final state = ref.watch(emailCheckProvider);
  return state.isError;
}

@riverpod
bool isCurrentUserLoading(Ref ref) {
  final state = ref.watch(currentUserProvider);
  return state.isLoading;
}
