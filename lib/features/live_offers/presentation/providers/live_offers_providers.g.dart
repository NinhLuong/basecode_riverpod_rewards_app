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
    extends $NotifierProvider<LiveOffersNotifier, LiveOffersState> {
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LiveOffersState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LiveOffersState>(value),
    );
  }
}

String _$liveOffersNotifierHash() =>
    r'971665ac853730432f6e1a8fb475ee3d25832f42';

abstract class _$LiveOffersNotifier extends $Notifier<LiveOffersState> {
  LiveOffersState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LiveOffersState, LiveOffersState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LiveOffersState, LiveOffersState>,
              LiveOffersState,
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

String _$liveOffersDataHash() => r'5551e80f7bf530508625a99930eecbd10e3f30e0';

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
    r'665e1496d076b5b6e9135e14fb1b00a4f5a59eda';

@ProviderFor(isLoadingMoreLiveOffers)
const isLoadingMoreLiveOffersProvider = IsLoadingMoreLiveOffersProvider._();

final class IsLoadingMoreLiveOffersProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsLoadingMoreLiveOffersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isLoadingMoreLiveOffersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isLoadingMoreLiveOffersHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isLoadingMoreLiveOffers(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isLoadingMoreLiveOffersHash() =>
    r'90c73f799e14d67abb9bcd99f8ed81a1ddff538f';

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
    r'48eb1bde82697f6dffb812cb20f6fbdcb3d7f103';

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
    r'bf14ce39811af015834b215f9b391f71ce2771b0';
