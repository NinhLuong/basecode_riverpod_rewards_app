// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppConfigNotifier)
const appConfigProvider = AppConfigNotifierProvider._();

final class AppConfigNotifierProvider
    extends $NotifierProvider<AppConfigNotifier, AppConfigState> {
  const AppConfigNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appConfigProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appConfigNotifierHash();

  @$internal
  @override
  AppConfigNotifier create() => AppConfigNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppConfigState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppConfigState>(value),
    );
  }
}

String _$appConfigNotifierHash() => r'a06e8a94091b6946c487246e171b3b04ee58060f';

abstract class _$AppConfigNotifier extends $Notifier<AppConfigState> {
  AppConfigState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AppConfigState, AppConfigState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppConfigState, AppConfigState>,
              AppConfigState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(currentLanguage)
const currentLanguageProvider = CurrentLanguageProvider._();

final class CurrentLanguageProvider
    extends $FunctionalProvider<AppLanguages, AppLanguages, AppLanguages>
    with $Provider<AppLanguages> {
  const CurrentLanguageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentLanguageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentLanguageHash();

  @$internal
  @override
  $ProviderElement<AppLanguages> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppLanguages create(Ref ref) {
    return currentLanguage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLanguages value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppLanguages>(value),
    );
  }
}

String _$currentLanguageHash() => r'990259312568c728c3f6e105ec518f0019806d29';

@ProviderFor(currentAppState)
const currentAppStateProvider = CurrentAppStateProvider._();

final class CurrentAppStateProvider
    extends $FunctionalProvider<AppState, AppState, AppState>
    with $Provider<AppState> {
  const CurrentAppStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentAppStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentAppStateHash();

  @$internal
  @override
  $ProviderElement<AppState> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppState create(Ref ref) {
    return currentAppState(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppState>(value),
    );
  }
}

String _$currentAppStateHash() => r'329b0d88dc7363ccdccce2ba7185c66077351e21';

@ProviderFor(isUserLoggedIn)
const isUserLoggedInProvider = IsUserLoggedInProvider._();

final class IsUserLoggedInProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsUserLoggedInProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isUserLoggedInProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isUserLoggedInHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isUserLoggedIn(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isUserLoggedInHash() => r'7e5123b99ced52849bd7985e3b2f9cb10469c62b';
