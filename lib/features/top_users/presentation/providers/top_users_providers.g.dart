// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_users_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getTopUsersUseCase)
const getTopUsersUseCaseProvider = GetTopUsersUseCaseProvider._();

final class GetTopUsersUseCaseProvider
    extends
        $FunctionalProvider<
          GetTopUsersUseCase,
          GetTopUsersUseCase,
          GetTopUsersUseCase
        >
    with $Provider<GetTopUsersUseCase> {
  const GetTopUsersUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getTopUsersUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getTopUsersUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetTopUsersUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetTopUsersUseCase create(Ref ref) {
    return getTopUsersUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetTopUsersUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetTopUsersUseCase>(value),
    );
  }
}

String _$getTopUsersUseCaseHash() =>
    r'fd31f5951396f6734af4717f2dc684fa90736733';

@ProviderFor(TopUsersNotifier)
const topUsersProvider = TopUsersNotifierProvider._();

final class TopUsersNotifierProvider
    extends $NotifierProvider<TopUsersNotifier, TopUsersState> {
  const TopUsersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'topUsersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$topUsersNotifierHash();

  @$internal
  @override
  TopUsersNotifier create() => TopUsersNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TopUsersState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TopUsersState>(value),
    );
  }
}

String _$topUsersNotifierHash() => r'46e1713d9c64a9f285a71a21cfe90c9159d84d28';

abstract class _$TopUsersNotifier extends $Notifier<TopUsersState> {
  TopUsersState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TopUsersState, TopUsersState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TopUsersState, TopUsersState>,
              TopUsersState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(topThreeUsers)
const topThreeUsersProvider = TopThreeUsersProvider._();

final class TopThreeUsersProvider
    extends
        $FunctionalProvider<
          List<UserRankEntity>,
          List<UserRankEntity>,
          List<UserRankEntity>
        >
    with $Provider<List<UserRankEntity>> {
  const TopThreeUsersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'topThreeUsersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$topThreeUsersHash();

  @$internal
  @override
  $ProviderElement<List<UserRankEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<UserRankEntity> create(Ref ref) {
    return topThreeUsers(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<UserRankEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<UserRankEntity>>(value),
    );
  }
}

String _$topThreeUsersHash() => r'defa8ed965beb1c825f2b2f33ae9c7b08879f1b3';

@ProviderFor(restUsers)
const restUsersProvider = RestUsersProvider._();

final class RestUsersProvider
    extends
        $FunctionalProvider<
          List<UserRankEntity>,
          List<UserRankEntity>,
          List<UserRankEntity>
        >
    with $Provider<List<UserRankEntity>> {
  const RestUsersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'restUsersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$restUsersHash();

  @$internal
  @override
  $ProviderElement<List<UserRankEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<UserRankEntity> create(Ref ref) {
    return restUsers(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<UserRankEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<UserRankEntity>>(value),
    );
  }
}

String _$restUsersHash() => r'007d97335bc44bae482cbf3e76180451bf8ece95';

@ProviderFor(myRank)
const myRankProvider = MyRankProvider._();

final class MyRankProvider
    extends
        $FunctionalProvider<UserRankEntity?, UserRankEntity?, UserRankEntity?>
    with $Provider<UserRankEntity?> {
  const MyRankProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myRankProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myRankHash();

  @$internal
  @override
  $ProviderElement<UserRankEntity?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserRankEntity? create(Ref ref) {
    return myRank(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserRankEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserRankEntity?>(value),
    );
  }
}

String _$myRankHash() => r'bb45ea9bd577273be08e1fc522484200f5ee62c6';

@ProviderFor(maxPoints)
const maxPointsProvider = MaxPointsProvider._();

final class MaxPointsProvider
    extends $FunctionalProvider<double, double, double>
    with $Provider<double> {
  const MaxPointsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'maxPointsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$maxPointsHash();

  @$internal
  @override
  $ProviderElement<double> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  double create(Ref ref) {
    return maxPoints(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double>(value),
    );
  }
}

String _$maxPointsHash() => r'0f68caf6ac7932bb750ac73eb1e765706356cd16';

@ProviderFor(isTopUsersLoading)
const isTopUsersLoadingProvider = IsTopUsersLoadingProvider._();

final class IsTopUsersLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsTopUsersLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isTopUsersLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isTopUsersLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isTopUsersLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isTopUsersLoadingHash() => r'83ad29c4064108328a6094897ef6a49591fdd044';

@ProviderFor(topUsersErrorMessage)
const topUsersErrorMessageProvider = TopUsersErrorMessageProvider._();

final class TopUsersErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const TopUsersErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'topUsersErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$topUsersErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return topUsersErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$topUsersErrorMessageHash() =>
    r'7813bf45aa34b4b389ee6a5edc313b87718b5662';

@ProviderFor(hasTopUsersError)
const hasTopUsersErrorProvider = HasTopUsersErrorProvider._();

final class HasTopUsersErrorProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasTopUsersErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasTopUsersErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasTopUsersErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasTopUsersError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasTopUsersErrorHash() => r'd1e6e342466b70ba165a76fb4847d050b2a60588';

@ProviderFor(hasTopUsersData)
const hasTopUsersDataProvider = HasTopUsersDataProvider._();

final class HasTopUsersDataProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasTopUsersDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasTopUsersDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasTopUsersDataHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasTopUsersData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasTopUsersDataHash() => r'bab72f185dd2f9445934b57f6b44fa0b760e6ea1';

@ProviderFor(isTopUsersRefreshing)
const isTopUsersRefreshingProvider = IsTopUsersRefreshingProvider._();

final class IsTopUsersRefreshingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsTopUsersRefreshingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isTopUsersRefreshingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isTopUsersRefreshingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isTopUsersRefreshing(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isTopUsersRefreshingHash() =>
    r'd78c178e8f8548103852f4dac693c94476048a2f';

@ProviderFor(topUsersData)
const topUsersDataProvider = TopUsersDataProvider._();

final class TopUsersDataProvider
    extends
        $FunctionalProvider<TopUsersEntity?, TopUsersEntity?, TopUsersEntity?>
    with $Provider<TopUsersEntity?> {
  const TopUsersDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'topUsersDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$topUsersDataHash();

  @$internal
  @override
  $ProviderElement<TopUsersEntity?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TopUsersEntity? create(Ref ref) {
    return topUsersData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TopUsersEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TopUsersEntity?>(value),
    );
  }
}

String _$topUsersDataHash() => r'7422a110f65c01433f5bd368dd445c10d1d3caa2';

@ProviderFor(currentPeriodIsHalfMonth)
const currentPeriodIsHalfMonthProvider = CurrentPeriodIsHalfMonthProvider._();

final class CurrentPeriodIsHalfMonthProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const CurrentPeriodIsHalfMonthProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentPeriodIsHalfMonthProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentPeriodIsHalfMonthHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return currentPeriodIsHalfMonth(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$currentPeriodIsHalfMonthHash() =>
    r'10c422e079c44d3fccbb653c75cb356aeae981c9';
