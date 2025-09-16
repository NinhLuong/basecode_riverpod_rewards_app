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
        isAutoDispose: true,
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

String _$appConfigNotifierHash() => r'366d148c7d5e5297c892c0a6ae648da5d8dd3190';

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
        isAutoDispose: true,
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

String _$currentLanguageHash() => r'bf2d882d3f50f01ea6d250483cb85a8035c47d39';

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
        isAutoDispose: true,
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

String _$currentAppStateHash() => r'd057baa2c4dd2dc1fb2ea30c3ff27a907f326395';

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
        isAutoDispose: true,
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

String _$isUserLoggedInHash() => r'56aad8acbeca49c90a3806b6e68959005639c5b1';
