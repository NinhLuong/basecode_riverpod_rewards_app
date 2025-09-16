// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(profileRepository)
const profileRepositoryProvider = ProfileRepositoryProvider._();

final class ProfileRepositoryProvider
    extends
        $FunctionalProvider<
          ProfileRepository,
          ProfileRepository,
          ProfileRepository
        >
    with $Provider<ProfileRepository> {
  const ProfileRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProfileRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfileRepository create(Ref ref) {
    return profileRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileRepository>(value),
    );
  }
}

String _$profileRepositoryHash() => r'f7fb25357ffa348edff0ee5602118642e3bce412';

@ProviderFor(ProfileNotifier)
const profileProvider = ProfileNotifierProvider._();

final class ProfileNotifierProvider
    extends $AsyncNotifierProvider<ProfileNotifier, ProfileEntity> {
  const ProfileNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileNotifierHash();

  @$internal
  @override
  ProfileNotifier create() => ProfileNotifier();
}

String _$profileNotifierHash() => r'a0c46104f5d7057b8b1119c610005c8c1f08a7fd';

abstract class _$ProfileNotifier extends $AsyncNotifier<ProfileEntity> {
  FutureOr<ProfileEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ProfileEntity>, ProfileEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProfileEntity>, ProfileEntity>,
              AsyncValue<ProfileEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(userProfileBalance)
const userProfileBalanceProvider = UserProfileBalanceProvider._();

final class UserProfileBalanceProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const UserProfileBalanceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProfileBalanceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userProfileBalanceHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return userProfileBalance(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$userProfileBalanceHash() =>
    r'2b99736e6efdcf7b3b0ed757adba421eed30835a';

@ProviderFor(profileRedeemedPoints)
const profileRedeemedPointsProvider = ProfileRedeemedPointsProvider._();

final class ProfileRedeemedPointsProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const ProfileRedeemedPointsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileRedeemedPointsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRedeemedPointsHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return profileRedeemedPoints(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$profileRedeemedPointsHash() =>
    r'a3ba0b9c2cb2a2defc67806a33c5c1fa448c950e';

@ProviderFor(profileTotalPoints)
const profileTotalPointsProvider = ProfileTotalPointsProvider._();

final class ProfileTotalPointsProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const ProfileTotalPointsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileTotalPointsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileTotalPointsHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return profileTotalPoints(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$profileTotalPointsHash() =>
    r'6aa61cee9563e5222e44c9f4a26d22c5fc5bfc4f';

@ProviderFor(isProfileLoading)
const isProfileLoadingProvider = IsProfileLoadingProvider._();

final class IsProfileLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsProfileLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isProfileLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isProfileLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isProfileLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isProfileLoadingHash() => r'b39c8876bd6abb2939f3895d413c9c37d82cf2fb';

@ProviderFor(profileErrorMessage)
const profileErrorMessageProvider = ProfileErrorMessageProvider._();

final class ProfileErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const ProfileErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return profileErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$profileErrorMessageHash() =>
    r'1309d43d98027c267b16de114b970a692183e653';
