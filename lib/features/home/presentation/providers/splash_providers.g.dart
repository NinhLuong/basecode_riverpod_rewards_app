// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider to track splash screen display timing

@ProviderFor(SplashDisplayTime)
final splashDisplayTimeProvider = SplashDisplayTimeProvider._();

/// Provider to track splash screen display timing
final class SplashDisplayTimeProvider
    extends $NotifierProvider<SplashDisplayTime, SplashDisplayState> {
  /// Provider to track splash screen display timing
  SplashDisplayTimeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashDisplayTimeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashDisplayTimeHash();

  @$internal
  @override
  SplashDisplayTime create() => SplashDisplayTime();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SplashDisplayState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SplashDisplayState>(value),
    );
  }
}

String _$splashDisplayTimeHash() => r'8870a75cdd1adbbc97f2d1707c7743a5e99a1adb';

/// Provider to track splash screen display timing

abstract class _$SplashDisplayTime extends $Notifier<SplashDisplayState> {
  SplashDisplayState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SplashDisplayState, SplashDisplayState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SplashDisplayState, SplashDisplayState>,
              SplashDisplayState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
