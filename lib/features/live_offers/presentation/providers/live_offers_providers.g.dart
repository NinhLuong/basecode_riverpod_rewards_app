// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_offers_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getLiveOffersUseCase)
const getLiveOffersUseCaseProvider = GetLiveOffersUseCaseProvider._();

final class GetLiveOffersUseCaseProvider
    extends
        $FunctionalProvider<
          GetLiveOffersUseCase,
          GetLiveOffersUseCase,
          GetLiveOffersUseCase
        >
    with $Provider<GetLiveOffersUseCase> {
  const GetLiveOffersUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getLiveOffersUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getLiveOffersUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetLiveOffersUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetLiveOffersUseCase create(Ref ref) {
    return getLiveOffersUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetLiveOffersUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetLiveOffersUseCase>(value),
    );
  }
}

String _$getLiveOffersUseCaseHash() =>
    r'aa3b7f4364844630eb4bfec61400260440253eac';

@ProviderFor(LiveOffersNotifier)
const liveOffersProvider = LiveOffersNotifierProvider._();

final class LiveOffersNotifierProvider
    extends $AsyncNotifierProvider<LiveOffersNotifier, LiveOffersEntity> {
  const LiveOffersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'liveOffersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$liveOffersNotifierHash();

  @$internal
  @override
  LiveOffersNotifier create() => LiveOffersNotifier();
}

String _$liveOffersNotifierHash() =>
    r'8ea63b51d6580000a9035a397d58f89cd6ab1400';

abstract class _$LiveOffersNotifier extends $AsyncNotifier<LiveOffersEntity> {
  FutureOr<LiveOffersEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<LiveOffersEntity>, LiveOffersEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<LiveOffersEntity>, LiveOffersEntity>,
              AsyncValue<LiveOffersEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(liveOffersData)
const liveOffersDataProvider = LiveOffersDataProvider._();

final class LiveOffersDataProvider
    extends
        $FunctionalProvider<
          List<LiveOfferEntity>,
          List<LiveOfferEntity>,
          List<LiveOfferEntity>
        >
    with $Provider<List<LiveOfferEntity>> {
  const LiveOffersDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'liveOffersDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$liveOffersDataHash();

  @$internal
  @override
  $ProviderElement<List<LiveOfferEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<LiveOfferEntity> create(Ref ref) {
    return liveOffersData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<LiveOfferEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<LiveOfferEntity>>(value),
    );
  }
}

String _$liveOffersDataHash() => r'2022a74cc0414b84f13a433885f90aee976011b3';

@ProviderFor(isLoadingLiveOffers)
const isLoadingLiveOffersProvider = IsLoadingLiveOffersProvider._();

final class IsLoadingLiveOffersProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsLoadingLiveOffersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isLoadingLiveOffersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isLoadingLiveOffersHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isLoadingLiveOffers(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isLoadingLiveOffersHash() =>
    r'f8494f9e0bf8d7f24df92dc1c256a0189541cc99';

@ProviderFor(hasLiveOffersError)
const hasLiveOffersErrorProvider = HasLiveOffersErrorProvider._();

final class HasLiveOffersErrorProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasLiveOffersErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasLiveOffersErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasLiveOffersErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasLiveOffersError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasLiveOffersErrorHash() =>
    r'3e78412fc03b1bccf7a3baffcd879d305a1c56c7';

@ProviderFor(liveOffersErrorMessage)
const liveOffersErrorMessageProvider = LiveOffersErrorMessageProvider._();

final class LiveOffersErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const LiveOffersErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'liveOffersErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$liveOffersErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return liveOffersErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$liveOffersErrorMessageHash() =>
    r'54e548257b2c294acad2063901592e2804cae2a9';
