import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/features/auth/domain/entities/check_email_entity.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginInitial;
  const factory LoginState.loading() = _LoginLoading;
  const factory LoginState.success(UserEntity user) = _LoginSuccess;
  const factory LoginState.error(Failure failure) = _LoginError;
}

extension LoginStateX on LoginState {
  bool get isInitial => this is _LoginInitial;
  bool get isLoading => this is _LoginLoading;
  bool get isSuccess => this is _LoginSuccess;
  bool get isError => this is _LoginError;

  UserEntity? get user => mapOrNull(success: (state) => state.user);
  
  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );
  
  String? get errorMessage => failure?.message;
  bool get hasUser => user != null;
}

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _RegisterInitial;
  const factory RegisterState.loading() = _RegisterLoading;
  const factory RegisterState.success(UserEntity user) = _RegisterSuccess;
  const factory RegisterState.error(Failure failure) = _RegisterError;
}

extension RegisterStateX on RegisterState {
  bool get isInitial => this is _RegisterInitial;
  bool get isLoading => this is _RegisterLoading;
  bool get isSuccess => this is _RegisterSuccess;
  bool get isError => this is _RegisterError;

  UserEntity? get user => mapOrNull(success: (state) => state.user);
  
  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );
  
  String? get errorMessage => failure?.message;
  bool get hasUser => user != null;
}

@freezed
sealed class EmailCheckState with _$EmailCheckState {
  const factory EmailCheckState.initial() = _EmailCheckInitial;
  const factory EmailCheckState.loading() = _EmailCheckLoading;
  const factory EmailCheckState.success(CheckEmailEntity result) = _EmailCheckSuccess;
  const factory EmailCheckState.error(Failure failure) = _EmailCheckError;
}

extension EmailCheckStateX on EmailCheckState {
  bool get isInitial => this is _EmailCheckInitial;
  bool get isLoading => this is _EmailCheckLoading;
  bool get isSuccess => this is _EmailCheckSuccess;
  bool get isError => this is _EmailCheckError;

  CheckEmailEntity? get result => mapOrNull(success: (state) => state.result);
  
  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );
  
  String? get errorMessage => failure?.message;
  bool get hasResult => result != null;
}

@freezed
sealed class CurrentUserState with _$CurrentUserState {
  const factory CurrentUserState.initial() = _CurrentUserInitial;
  const factory CurrentUserState.loading() = _CurrentUserLoading;
  const factory CurrentUserState.authenticated(UserEntity user) = _CurrentUserAuthenticated;
  const factory CurrentUserState.unauthenticated() = _CurrentUserUnauthenticated;
  const factory CurrentUserState.error(Failure failure) = _CurrentUserError;
}

extension CurrentUserStateX on CurrentUserState {
  bool get isInitial => this is _CurrentUserInitial;
  bool get isLoading => this is _CurrentUserLoading;
  bool get isAuthenticated => this is _CurrentUserAuthenticated;
  bool get isUnauthenticated => this is _CurrentUserUnauthenticated;
  bool get isError => this is _CurrentUserError;

  UserEntity? get user => mapOrNull(authenticated: (state) => state.user);
  
  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );
  
  String? get errorMessage => failure?.message;
  bool get hasUser => user != null;
}
