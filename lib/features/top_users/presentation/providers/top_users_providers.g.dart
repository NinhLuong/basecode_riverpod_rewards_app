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
    extends $AsyncNotifierProvider<TopUsersNotifier, TopUsersEntity> {
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
}

String _$topUsersNotifierHash() => r'a278bcfbf0fd0331336da8b45874080510e20122';

abstract class _$TopUsersNotifier extends $AsyncNotifier<TopUsersEntity> {
  FutureOr<TopUsersEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<TopUsersEntity>, TopUsersEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TopUsersEntity>, TopUsersEntity>,
              AsyncValue<TopUsersEntity>,
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

String _$topThreeUsersHash() => r'ed19173bc49e048fd72a9b34873b7cb31008f631';

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

String _$restUsersHash() => r'c923674b04aa16a564b6865e70a980fb37f2a4c8';

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

String _$myRankHash() => r'bf054a4098a5bc6c68a90be7c4d5097a44812ce5';

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

String _$maxPointsHash() => r'ff7f04e3d7c5b3c37afc233715157555e19939e9';

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

String _$isTopUsersLoadingHash() => r'aca0eb0db668b26b6b7df7c5d9754e4083f9a1fe';

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
    r'6c918efe13d3f773865a5703b2d5ed4e7fc2d051';
