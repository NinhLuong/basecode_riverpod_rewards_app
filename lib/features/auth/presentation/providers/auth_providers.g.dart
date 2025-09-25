// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loginUseCase)
const loginUseCaseProvider = LoginUseCaseProvider._();

final class LoginUseCaseProvider
    extends $FunctionalProvider<LoginUseCase, LoginUseCase, LoginUseCase>
    with $Provider<LoginUseCase> {
  const LoginUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginUseCaseHash();

  @$internal
  @override
  $ProviderElement<LoginUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginUseCase create(Ref ref) {
    return loginUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginUseCase>(value),
    );
  }
}

String _$loginUseCaseHash() => r'ed413fe675c673003f41370c188730592e742297';

@ProviderFor(registerUseCase)
const registerUseCaseProvider = RegisterUseCaseProvider._();

final class RegisterUseCaseProvider
    extends
        $FunctionalProvider<RegisterUseCase, RegisterUseCase, RegisterUseCase>
    with $Provider<RegisterUseCase> {
  const RegisterUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registerUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registerUseCaseHash();

  @$internal
  @override
  $ProviderElement<RegisterUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RegisterUseCase create(Ref ref) {
    return registerUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RegisterUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RegisterUseCase>(value),
    );
  }
}

String _$registerUseCaseHash() => r'e177b05fd51671a5fd275057ce2b5514f7a8616b';

@ProviderFor(checkEmailUseCase)
const checkEmailUseCaseProvider = CheckEmailUseCaseProvider._();

final class CheckEmailUseCaseProvider
    extends
        $FunctionalProvider<
          CheckEmailUseCase,
          CheckEmailUseCase,
          CheckEmailUseCase
        >
    with $Provider<CheckEmailUseCase> {
  const CheckEmailUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkEmailUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkEmailUseCaseHash();

  @$internal
  @override
  $ProviderElement<CheckEmailUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CheckEmailUseCase create(Ref ref) {
    return checkEmailUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckEmailUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckEmailUseCase>(value),
    );
  }
}

String _$checkEmailUseCaseHash() => r'12f7ded7ddb282df4cde36387be06bb0efa97a77';

@ProviderFor(userLocalDataSource)
const userLocalDataSourceProvider = UserLocalDataSourceProvider._();

final class UserLocalDataSourceProvider
    extends
        $FunctionalProvider<
          UserLocalDataSource,
          UserLocalDataSource,
          UserLocalDataSource
        >
    with $Provider<UserLocalDataSource> {
  const UserLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<UserLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserLocalDataSource create(Ref ref) {
    return userLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserLocalDataSource>(value),
    );
  }
}

String _$userLocalDataSourceHash() =>
    r'ba8f510c34b578a7e20399ed4b81fd9cb03379bb';

@ProviderFor(LoginNotifier)
const loginProvider = LoginNotifierProvider._();

final class LoginNotifierProvider
    extends $NotifierProvider<LoginNotifier, LoginState> {
  const LoginNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginNotifierHash();

  @$internal
  @override
  LoginNotifier create() => LoginNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginState>(value),
    );
  }
}

String _$loginNotifierHash() => r'715fe6524d315051445afab92180718fed1a6207';

abstract class _$LoginNotifier extends $Notifier<LoginState> {
  LoginState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LoginState, LoginState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoginState, LoginState>,
              LoginState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(RegisterNotifier)
const registerProvider = RegisterNotifierProvider._();

final class RegisterNotifierProvider
    extends $NotifierProvider<RegisterNotifier, RegisterState> {
  const RegisterNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registerNotifierHash();

  @$internal
  @override
  RegisterNotifier create() => RegisterNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RegisterState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RegisterState>(value),
    );
  }
}

String _$registerNotifierHash() => r'e2cfbef21ab1f4eee9990ce51dd60df3c39f5004';

abstract class _$RegisterNotifier extends $Notifier<RegisterState> {
  RegisterState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RegisterState, RegisterState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RegisterState, RegisterState>,
              RegisterState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(EmailCheckNotifier)
const emailCheckProvider = EmailCheckNotifierProvider._();

final class EmailCheckNotifierProvider
    extends $NotifierProvider<EmailCheckNotifier, EmailCheckState> {
  const EmailCheckNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'emailCheckProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$emailCheckNotifierHash();

  @$internal
  @override
  EmailCheckNotifier create() => EmailCheckNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EmailCheckState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EmailCheckState>(value),
    );
  }
}

String _$emailCheckNotifierHash() =>
    r'7f6acebd237192f599da25cfabd798dc2cf6d80f';

abstract class _$EmailCheckNotifier extends $Notifier<EmailCheckState> {
  EmailCheckState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<EmailCheckState, EmailCheckState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EmailCheckState, EmailCheckState>,
              EmailCheckState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(CurrentUserNotifier)
const currentUserProvider = CurrentUserNotifierProvider._();

final class CurrentUserNotifierProvider
    extends $NotifierProvider<CurrentUserNotifier, CurrentUserState> {
  const CurrentUserNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUserProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUserNotifierHash();

  @$internal
  @override
  CurrentUserNotifier create() => CurrentUserNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CurrentUserState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CurrentUserState>(value),
    );
  }
}

String _$currentUserNotifierHash() =>
    r'e2aa531315c5fcd4557728db890808281f6a77c3';

abstract class _$CurrentUserNotifier extends $Notifier<CurrentUserState> {
  CurrentUserState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CurrentUserState, CurrentUserState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CurrentUserState, CurrentUserState>,
              CurrentUserState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(isLoginLoading)
const isLoginLoadingProvider = IsLoginLoadingProvider._();

final class IsLoginLoadingProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsLoginLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isLoginLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isLoginLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isLoginLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isLoginLoadingHash() => r'0057235d1d692b7c4c5f2529515dcba486d00fa1';

@ProviderFor(isRegisterLoading)
const isRegisterLoadingProvider = IsRegisterLoadingProvider._();

final class IsRegisterLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsRegisterLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isRegisterLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isRegisterLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isRegisterLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isRegisterLoadingHash() => r'04c1ac370fd3f6d58a0cf7f91937cca34b257255';

@ProviderFor(isEmailCheckLoading)
const isEmailCheckLoadingProvider = IsEmailCheckLoadingProvider._();

final class IsEmailCheckLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsEmailCheckLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isEmailCheckLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isEmailCheckLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isEmailCheckLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isEmailCheckLoadingHash() =>
    r'c5f51ffcb258356cdc41382a217986f675aa4777';

@ProviderFor(loginErrorMessage)
const loginErrorMessageProvider = LoginErrorMessageProvider._();

final class LoginErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const LoginErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return loginErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$loginErrorMessageHash() => r'84b4c87c1e71381abd7c2ff6fa9e4fa69c995296';

@ProviderFor(registerErrorMessage)
const registerErrorMessageProvider = RegisterErrorMessageProvider._();

final class RegisterErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const RegisterErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registerErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registerErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return registerErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$registerErrorMessageHash() =>
    r'068406e8f79f541badc52c2fe6c7164ff1e5b9a7';

@ProviderFor(emailCheckErrorMessage)
const emailCheckErrorMessageProvider = EmailCheckErrorMessageProvider._();

final class EmailCheckErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const EmailCheckErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'emailCheckErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$emailCheckErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return emailCheckErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$emailCheckErrorMessageHash() =>
    r'fbb29123a76a28aac3d63dc3eb0bd7e93a18a3cc';

@ProviderFor(isUserAuthenticated)
const isUserAuthenticatedProvider = IsUserAuthenticatedProvider._();

final class IsUserAuthenticatedProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsUserAuthenticatedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isUserAuthenticatedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isUserAuthenticatedHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isUserAuthenticated(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isUserAuthenticatedHash() =>
    r'1c3fd3178c466c3819cca4f2be84ddb44588b932';

@ProviderFor(currentUserData)
const currentUserDataProvider = CurrentUserDataProvider._();

final class CurrentUserDataProvider
    extends $FunctionalProvider<UserEntity?, UserEntity?, UserEntity?>
    with $Provider<UserEntity?> {
  const CurrentUserDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUserDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUserDataHash();

  @$internal
  @override
  $ProviderElement<UserEntity?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserEntity? create(Ref ref) {
    return currentUserData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserEntity?>(value),
    );
  }
}

String _$currentUserDataHash() => r'441ca128e5219a8a71ffa3259cf8e8caf677ee9a';

@ProviderFor(loginUserData)
const loginUserDataProvider = LoginUserDataProvider._();

final class LoginUserDataProvider
    extends $FunctionalProvider<UserEntity?, UserEntity?, UserEntity?>
    with $Provider<UserEntity?> {
  const LoginUserDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginUserDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginUserDataHash();

  @$internal
  @override
  $ProviderElement<UserEntity?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserEntity? create(Ref ref) {
    return loginUserData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserEntity?>(value),
    );
  }
}

String _$loginUserDataHash() => r'592964b001ea668d4e2321f1731c433119cbfc5d';

@ProviderFor(registerUserData)
const registerUserDataProvider = RegisterUserDataProvider._();

final class RegisterUserDataProvider
    extends $FunctionalProvider<UserEntity?, UserEntity?, UserEntity?>
    with $Provider<UserEntity?> {
  const RegisterUserDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'registerUserDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$registerUserDataHash();

  @$internal
  @override
  $ProviderElement<UserEntity?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserEntity? create(Ref ref) {
    return registerUserData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserEntity?>(value),
    );
  }
}

String _$registerUserDataHash() => r'aac129335544afa90468fb5237d10109e591ddf8';

@ProviderFor(emailCheckResult)
const emailCheckResultProvider = EmailCheckResultProvider._();

final class EmailCheckResultProvider
    extends
        $FunctionalProvider<
          CheckEmailEntity?,
          CheckEmailEntity?,
          CheckEmailEntity?
        >
    with $Provider<CheckEmailEntity?> {
  const EmailCheckResultProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'emailCheckResultProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$emailCheckResultHash();

  @$internal
  @override
  $ProviderElement<CheckEmailEntity?> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CheckEmailEntity? create(Ref ref) {
    return emailCheckResult(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckEmailEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckEmailEntity?>(value),
    );
  }
}

String _$emailCheckResultHash() => r'171b3c2067f501b196cf22a4dd08f53f20fecca8';

@ProviderFor(hasLoginError)
const hasLoginErrorProvider = HasLoginErrorProvider._();

final class HasLoginErrorProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasLoginErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasLoginErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasLoginErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasLoginError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasLoginErrorHash() => r'7d9869f78d22f2b694d97feaa7110a0a5e2e9515';

@ProviderFor(hasRegisterError)
const hasRegisterErrorProvider = HasRegisterErrorProvider._();

final class HasRegisterErrorProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasRegisterErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasRegisterErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasRegisterErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasRegisterError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasRegisterErrorHash() => r'f553ec616ffd0572cd9d6055619b51aa5023b03b';

@ProviderFor(hasEmailCheckError)
const hasEmailCheckErrorProvider = HasEmailCheckErrorProvider._();

final class HasEmailCheckErrorProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasEmailCheckErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasEmailCheckErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasEmailCheckErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasEmailCheckError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasEmailCheckErrorHash() =>
    r'3ac8677c337472b0294c2e6886fda4617a1d04a0';

@ProviderFor(isCurrentUserLoading)
const isCurrentUserLoadingProvider = IsCurrentUserLoadingProvider._();

final class IsCurrentUserLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsCurrentUserLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isCurrentUserLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isCurrentUserLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isCurrentUserLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isCurrentUserLoadingHash() =>
    r'205abb223bd50912af097003e717281d60c0f42c';
