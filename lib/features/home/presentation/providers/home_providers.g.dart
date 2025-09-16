// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getHomeUseCase)
const getHomeUseCaseProvider = GetHomeUseCaseProvider._();

final class GetHomeUseCaseProvider
    extends $FunctionalProvider<GetHomeUseCase, GetHomeUseCase, GetHomeUseCase>
    with $Provider<GetHomeUseCase> {
  const GetHomeUseCaseProvider._()
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

@ProviderFor(homeUserLocalDataSource)
const homeUserLocalDataSourceProvider = HomeUserLocalDataSourceProvider._();

final class HomeUserLocalDataSourceProvider
    extends
        $FunctionalProvider<
          UserLocalDataSource,
          UserLocalDataSource,
          UserLocalDataSource
        >
    with $Provider<UserLocalDataSource> {
  const HomeUserLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeUserLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeUserLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<UserLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserLocalDataSource create(Ref ref) {
    return homeUserLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserLocalDataSource>(value),
    );
  }
}

String _$homeUserLocalDataSourceHash() =>
    r'e5565ade7ba0f46cfcf8d1634b9af7b52c090366';

@ProviderFor(HomeNotifier)
const homeProvider = HomeNotifierProvider._();

final class HomeNotifierProvider
    extends $AsyncNotifierProvider<HomeNotifier, HomeWithUserEntity> {
  const HomeNotifierProvider._()
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
}

String _$homeNotifierHash() => r'1c1290181534de806b4369aa03cccdec2ff01ac2';

abstract class _$HomeNotifier extends $AsyncNotifier<HomeWithUserEntity> {
  FutureOr<HomeWithUserEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<HomeWithUserEntity>, HomeWithUserEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<HomeWithUserEntity>, HomeWithUserEntity>,
              AsyncValue<HomeWithUserEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(homeData)
const homeDataProvider = HomeDataProvider._();

final class HomeDataProvider
    extends $FunctionalProvider<HomeEntity?, HomeEntity?, HomeEntity?>
    with $Provider<HomeEntity?> {
  const HomeDataProvider._()
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

String _$homeDataHash() => r'1ad17260443962ee182b089462aa98609b427afe';

@ProviderFor(homeUserData)
const homeUserDataProvider = HomeUserDataProvider._();

final class HomeUserDataProvider
    extends $FunctionalProvider<UserEntity?, UserEntity?, UserEntity?>
    with $Provider<UserEntity?> {
  const HomeUserDataProvider._()
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

String _$homeUserDataHash() => r'8076c6ceadc32b761dd1f719086f22fd9b568f22';

@ProviderFor(userBalance)
const userBalanceProvider = UserBalanceProvider._();

final class UserBalanceProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const UserBalanceProvider._()
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

String _$userBalanceHash() => r'5685a038f0519df1337f5790b311aa442a058c5f';

@ProviderFor(offerWalls)
const offerWallsProvider = OfferWallsProvider._();

final class OfferWallsProvider
    extends
        $FunctionalProvider<
          List<OfferWallEntity>,
          List<OfferWallEntity>,
          List<OfferWallEntity>
        >
    with $Provider<List<OfferWallEntity>> {
  const OfferWallsProvider._()
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

String _$offerWallsHash() => r'615e7dc5988cf4102e5d672fcf86a560a0bcd8f5';

@ProviderFor(currentUserName)
const currentUserNameProvider = CurrentUserNameProvider._();

final class CurrentUserNameProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const CurrentUserNameProvider._()
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

String _$currentUserNameHash() => r'66cbb83b339e3fb4b67b1eb91f7712c3e0fe59cd';

@ProviderFor(userFullName)
const userFullNameProvider = UserFullNameProvider._();

final class UserFullNameProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const UserFullNameProvider._()
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

String _$userFullNameHash() => r'97b857684d0cdde0678fa6a18a51702a42d1ef8e';

@ProviderFor(userEmail)
const userEmailProvider = UserEmailProvider._();

final class UserEmailProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const UserEmailProvider._()
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

String _$userEmailHash() => r'00a5bdf80869321adb9b5b61f8bafc6229d3ad5d';

@ProviderFor(userPoints)
const userPointsProvider = UserPointsProvider._();

final class UserPointsProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const UserPointsProvider._()
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

String _$userPointsHash() => r'b8274e3748c7aacc95e17afbbc546eea4de8e429';

@ProviderFor(userRedeemedPoints)
const userRedeemedPointsProvider = UserRedeemedPointsProvider._();

final class UserRedeemedPointsProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const UserRedeemedPointsProvider._()
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
    r'e9ea0052b57dd1a7e9c022a9bdadce4fc47b10f5';

@ProviderFor(isHomeLoading)
const isHomeLoadingProvider = IsHomeLoadingProvider._();

final class IsHomeLoadingProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsHomeLoadingProvider._()
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

String _$isHomeLoadingHash() => r'2954d79017bfa941fad89ef5f91a2c69ba75a63e';

@ProviderFor(hasHomeError)
const hasHomeErrorProvider = HasHomeErrorProvider._();

final class HasHomeErrorProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasHomeErrorProvider._()
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

String _$hasHomeErrorHash() => r'c052fed80a15413c301e2bb052f64740b79b5dbf';

@ProviderFor(homeErrorMessage)
const homeErrorMessageProvider = HomeErrorMessageProvider._();

final class HomeErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const HomeErrorMessageProvider._()
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

String _$homeErrorMessageHash() => r'8e5730a7ab2a06c1c7fd8a2e8deaf1a2c28ad3b4';

@ProviderFor(hasHomeData)
const hasHomeDataProvider = HasHomeDataProvider._();

final class HasHomeDataProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasHomeDataProvider._()
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

String _$hasHomeDataHash() => r'ee6391b0c1ce4b86c2b1b31edaa268806c3b1284';
