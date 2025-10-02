// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_locale_observer.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for system locale observer

@ProviderFor(systemLocaleObserver)
const systemLocaleObserverProvider = SystemLocaleObserverProvider._();

/// Provider for system locale observer

final class SystemLocaleObserverProvider
    extends
        $FunctionalProvider<
          SystemLocaleObserver,
          SystemLocaleObserver,
          SystemLocaleObserver
        >
    with $Provider<SystemLocaleObserver> {
  /// Provider for system locale observer
  const SystemLocaleObserverProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'systemLocaleObserverProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$systemLocaleObserverHash();

  @$internal
  @override
  $ProviderElement<SystemLocaleObserver> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SystemLocaleObserver create(Ref ref) {
    return systemLocaleObserver(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SystemLocaleObserver value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SystemLocaleObserver>(value),
    );
  }
}

String _$systemLocaleObserverHash() =>
    r'60e5840f9569d27f9f92c78ad49934c997029a66';

/// Provider that exposes the current system locale as AppLanguages

@ProviderFor(systemLocale)
const systemLocaleProvider = SystemLocaleProvider._();

/// Provider that exposes the current system locale as AppLanguages

final class SystemLocaleProvider
    extends $FunctionalProvider<AppLanguages, AppLanguages, AppLanguages>
    with $Provider<AppLanguages> {
  /// Provider that exposes the current system locale as AppLanguages
  const SystemLocaleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'systemLocaleProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$systemLocaleHash();

  @$internal
  @override
  $ProviderElement<AppLanguages> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppLanguages create(Ref ref) {
    return systemLocale(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLanguages value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppLanguages>(value),
    );
  }
}

String _$systemLocaleHash() => r'e7c92106594c476026a307fe69fdf65ddf8dfdcc';
