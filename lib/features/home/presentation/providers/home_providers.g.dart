// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getHomeUseCase)
final getHomeUseCaseProvider = GetHomeUseCaseProvider._();

final class GetHomeUseCaseProvider
    extends $FunctionalProvider<GetHomeUseCase, GetHomeUseCase, GetHomeUseCase>
    with $Provider<GetHomeUseCase> {
  GetHomeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getHomeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getHomeUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetHomeUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetHomeUseCase create(Ref ref) {
    return getHomeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetHomeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetHomeUseCase>(value),
    );
  }
}

String _$getHomeUseCaseHash() => r'315198e350056d3e2ae4786a9afc06fa964c416a';

@ProviderFor(homeGetUserLocalUseCase)
final homeGetUserLocalUseCaseProvider = HomeGetUserLocalUseCaseProvider._();

final class HomeGetUserLocalUseCaseProvider
    extends
        $FunctionalProvider<
          GetUserLocalUseCase,
          GetUserLocalUseCase,
          GetUserLocalUseCase
        >
    with $Provider<GetUserLocalUseCase> {
  HomeGetUserLocalUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeGetUserLocalUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeGetUserLocalUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetUserLocalUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetUserLocalUseCase create(Ref ref) {
    return homeGetUserLocalUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetUserLocalUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetUserLocalUseCase>(value),
    );
  }
}

String _$homeGetUserLocalUseCaseHash() =>
    r'403cc9769d2741af0ba625fd04701865ed80b8ce';

@ProviderFor(HomeNotifier)
final homeProvider = HomeNotifierProvider._();

final class HomeNotifierProvider
    extends $NotifierProvider<HomeNotifier, HomeState> {
  HomeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeNotifierHash();

  @$internal
  @override
  HomeNotifier create() => HomeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeState>(value),
    );
  }
}

String _$homeNotifierHash() => r'5a65b4abcb219279a6135f355272666f35c43ba3';

abstract class _$HomeNotifier extends $Notifier<HomeState> {
  HomeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<HomeState, HomeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HomeState, HomeState>,
              HomeState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(homeData)
final homeDataProvider = HomeDataProvider._();

final class HomeDataProvider
    extends $FunctionalProvider<HomeEntity?, HomeEntity?, HomeEntity?>
    with $Provider<HomeEntity?> {
  HomeDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeDataHash();

  @$internal
  @override
  $ProviderElement<HomeEntity?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  HomeEntity? create(Ref ref) {
    return homeData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeEntity?>(value),
    );
  }
}

String _$homeDataHash() => r'a5df0441e56606c962354ac4e16fc55f429ec8a9';

@ProviderFor(homeUserData)
final homeUserDataProvider = HomeUserDataProvider._();

final class HomeUserDataProvider
    extends $FunctionalProvider<UserEntity?, UserEntity?, UserEntity?>
    with $Provider<UserEntity?> {
  HomeUserDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeUserDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeUserDataHash();

  @$internal
  @override
  $ProviderElement<UserEntity?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserEntity? create(Ref ref) {
    return homeUserData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserEntity?>(value),
    );
  }
}

String _$homeUserDataHash() => r'dffc5eb3adb0ac7d913a7cb196a38a0ef020cadf';

@ProviderFor(userBalance)
final userBalanceProvider = UserBalanceProvider._();

final class UserBalanceProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  UserBalanceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userBalanceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userBalanceHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return userBalance(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$userBalanceHash() => r'8c2afc1c735add2783ca06cc514e26286c7ea4b1';

@ProviderFor(offerWalls)
final offerWallsProvider = OfferWallsProvider._();

final class OfferWallsProvider
    extends
        $FunctionalProvider<
          List<OfferWallEntity>,
          List<OfferWallEntity>,
          List<OfferWallEntity>
        >
    with $Provider<List<OfferWallEntity>> {
  OfferWallsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'offerWallsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$offerWallsHash();

  @$internal
  @override
  $ProviderElement<List<OfferWallEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<OfferWallEntity> create(Ref ref) {
    return offerWalls(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<OfferWallEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<OfferWallEntity>>(value),
    );
  }
}

String _$offerWallsHash() => r'a55dfcd905f62d7806f0cf1aab7280896ede2b66';

@ProviderFor(currentUserName)
final currentUserNameProvider = CurrentUserNameProvider._();

final class CurrentUserNameProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  CurrentUserNameProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUserNameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUserNameHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return currentUserName(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$currentUserNameHash() => r'8135b6a0c83ea1733d936f93bc2ecd289cf7687f';

@ProviderFor(userFullName)
final userFullNameProvider = UserFullNameProvider._();

final class UserFullNameProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  UserFullNameProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userFullNameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userFullNameHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return userFullName(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$userFullNameHash() => r'ea740231e7e23be32bd778a5a9b2b8356733c67c';

@ProviderFor(userEmail)
final userEmailProvider = UserEmailProvider._();

final class UserEmailProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  UserEmailProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userEmailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userEmailHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return userEmail(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$userEmailHash() => r'e9e38d60fa4c57074bf569ea61dd3748abecca47';

@ProviderFor(userPoints)
final userPointsProvider = UserPointsProvider._();

final class UserPointsProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  UserPointsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userPointsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userPointsHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return userPoints(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$userPointsHash() => r'7a133c9a0c1ce5430c13dd1e6b54039fa869d05e';

@ProviderFor(userRedeemedPoints)
final userRedeemedPointsProvider = UserRedeemedPointsProvider._();

final class UserRedeemedPointsProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  UserRedeemedPointsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userRedeemedPointsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userRedeemedPointsHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return userRedeemedPoints(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$userRedeemedPointsHash() =>
    r'f2eb3ebeed210d83266d02de8b5d6057785e7736';

@ProviderFor(isHomeLoading)
final isHomeLoadingProvider = IsHomeLoadingProvider._();

final class IsHomeLoadingProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsHomeLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isHomeLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isHomeLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isHomeLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isHomeLoadingHash() => r'c7239b6b1eecdc7ec0cc73a8c18d8e5585d114bb';

@ProviderFor(hasHomeError)
final hasHomeErrorProvider = HasHomeErrorProvider._();

final class HasHomeErrorProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  HasHomeErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasHomeErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasHomeErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasHomeError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasHomeErrorHash() => r'185d71ed949034d843bf7f736e15f34c1bbe2281';

@ProviderFor(homeErrorMessage)
final homeErrorMessageProvider = HomeErrorMessageProvider._();

final class HomeErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  HomeErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return homeErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$homeErrorMessageHash() => r'06b3973dd65176b7a073f0460e29644c737078ee';

@ProviderFor(hasHomeData)
final hasHomeDataProvider = HasHomeDataProvider._();

final class HasHomeDataProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  HasHomeDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasHomeDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasHomeDataHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasHomeData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasHomeDataHash() => r'505fed1336dbffd66bf77d1585c6ddc1e6c4d992';

@ProviderFor(isHomeRefreshing)
final isHomeRefreshingProvider = IsHomeRefreshingProvider._();

final class IsHomeRefreshingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsHomeRefreshingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isHomeRefreshingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isHomeRefreshingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isHomeRefreshing(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isHomeRefreshingHash() => r'8d07e5a0c7a3f965f4fd9318d4a8a3c3b96b3188';

@ProviderFor(homeWithUserData)
final homeWithUserDataProvider = HomeWithUserDataProvider._();

final class HomeWithUserDataProvider
    extends
        $FunctionalProvider<
          HomeWithUserEntity?,
          HomeWithUserEntity?,
          HomeWithUserEntity?
        >
    with $Provider<HomeWithUserEntity?> {
  HomeWithUserDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeWithUserDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeWithUserDataHash();

  @$internal
  @override
  $ProviderElement<HomeWithUserEntity?> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  HomeWithUserEntity? create(Ref ref) {
    return homeWithUserData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeWithUserEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeWithUserEntity?>(value),
    );
  }
}

String _$homeWithUserDataHash() => r'041de333ff3b508f45c6d6a27831a148da1d00ae';
