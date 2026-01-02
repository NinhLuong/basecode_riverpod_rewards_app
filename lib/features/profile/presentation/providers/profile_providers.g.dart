// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(profileRepository)
final profileRepositoryProvider = ProfileRepositoryProvider._();

final class ProfileRepositoryProvider
    extends
        $FunctionalProvider<
          ProfileRepository,
          ProfileRepository,
          ProfileRepository
        >
    with $Provider<ProfileRepository> {
  ProfileRepositoryProvider._()
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
final profileProvider = ProfileNotifierProvider._();

final class ProfileNotifierProvider
    extends $NotifierProvider<ProfileNotifier, ProfileState> {
  ProfileNotifierProvider._()
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileState>(value),
    );
  }
}

String _$profileNotifierHash() => r'0ef8b067f51d4f1fb54d188fc30cf3fc3e039d23';

abstract class _$ProfileNotifier extends $Notifier<ProfileState> {
  ProfileState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ProfileState, ProfileState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfileState, ProfileState>,
              ProfileState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(userProfileBalance)
final userProfileBalanceProvider = UserProfileBalanceProvider._();

final class UserProfileBalanceProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  UserProfileBalanceProvider._()
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
    r'6dcf13250149b54981664198f8ae738a71b578b7';

@ProviderFor(profileRedeemedPoints)
final profileRedeemedPointsProvider = ProfileRedeemedPointsProvider._();

final class ProfileRedeemedPointsProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  ProfileRedeemedPointsProvider._()
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
    r'f946f46005f15e1078eb802ef2dc15108c2b9c24';

@ProviderFor(profileTotalPoints)
final profileTotalPointsProvider = ProfileTotalPointsProvider._();

final class ProfileTotalPointsProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  ProfileTotalPointsProvider._()
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
    r'b604897ffbc06cf306e1a8e260a2447e918c5950';

@ProviderFor(isProfileLoading)
final isProfileLoadingProvider = IsProfileLoadingProvider._();

final class IsProfileLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsProfileLoadingProvider._()
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

String _$isProfileLoadingHash() => r'107c35a30c5ffb33d6e8dbf0414291bac6a890a2';

@ProviderFor(profileErrorMessage)
final profileErrorMessageProvider = ProfileErrorMessageProvider._();

final class ProfileErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  ProfileErrorMessageProvider._()
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
    r'8e0cff6bb9ece1f4746c379181e8c1f47dc0cee3';

@ProviderFor(hasProfileError)
final hasProfileErrorProvider = HasProfileErrorProvider._();

final class HasProfileErrorProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  HasProfileErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasProfileErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasProfileErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasProfileError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasProfileErrorHash() => r'297ff21e6dae768f1ba0ffc08c9fa4f46684d186';

@ProviderFor(hasProfileData)
final hasProfileDataProvider = HasProfileDataProvider._();

final class HasProfileDataProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  HasProfileDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasProfileDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasProfileDataHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasProfileData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasProfileDataHash() => r'ee8cbf7bdd617eb51b52eec3e7a4d6ef03372610';

@ProviderFor(isProfileRefreshing)
final isProfileRefreshingProvider = IsProfileRefreshingProvider._();

final class IsProfileRefreshingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsProfileRefreshingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isProfileRefreshingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isProfileRefreshingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isProfileRefreshing(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isProfileRefreshingHash() =>
    r'4300f7393d712efe7014ed5cf5b7a578426f2b42';

@ProviderFor(profileData)
final profileDataProvider = ProfileDataProvider._();

final class ProfileDataProvider
    extends $FunctionalProvider<ProfileEntity?, ProfileEntity?, ProfileEntity?>
    with $Provider<ProfileEntity?> {
  ProfileDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileDataHash();

  @$internal
  @override
  $ProviderElement<ProfileEntity?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProfileEntity? create(Ref ref) {
    return profileData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileEntity?>(value),
    );
  }
}

String _$profileDataHash() => r'29319fdd38d85967a38acc1cebf43b6119d5d571';
