// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(rewardsRepository)
const rewardsRepositoryProvider = RewardsRepositoryProvider._();

final class RewardsRepositoryProvider
    extends
        $FunctionalProvider<
          RewardsRepository,
          RewardsRepository,
          RewardsRepository
        >
    with $Provider<RewardsRepository> {
  const RewardsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rewardsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rewardsRepositoryHash();

  @$internal
  @override
  $ProviderElement<RewardsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RewardsRepository create(Ref ref) {
    return rewardsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RewardsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RewardsRepository>(value),
    );
  }
}

String _$rewardsRepositoryHash() => r'594a20428f0d902a16b55763977937abf575cf2d';

@ProviderFor(OrdersNotifier)
const ordersProvider = OrdersNotifierProvider._();

final class OrdersNotifierProvider
    extends $NotifierProvider<OrdersNotifier, OrdersState> {
  const OrdersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ordersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ordersNotifierHash();

  @$internal
  @override
  OrdersNotifier create() => OrdersNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrdersState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrdersState>(value),
    );
  }
}

String _$ordersNotifierHash() => r'acac1909e605e082ff4dcbf4d80ed03258ad7ceb';

abstract class _$OrdersNotifier extends $Notifier<OrdersState> {
  OrdersState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<OrdersState, OrdersState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<OrdersState, OrdersState>,
              OrdersState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(TransactionsNotifier)
const transactionsProvider = TransactionsNotifierProvider._();

final class TransactionsNotifierProvider
    extends $NotifierProvider<TransactionsNotifier, TransactionsState> {
  const TransactionsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionsNotifierHash();

  @$internal
  @override
  TransactionsNotifier create() => TransactionsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionsState>(value),
    );
  }
}

String _$transactionsNotifierHash() =>
    r'75408df31ced5b2515262ef1310eec80163f6a02';

abstract class _$TransactionsNotifier extends $Notifier<TransactionsState> {
  TransactionsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TransactionsState, TransactionsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TransactionsState, TransactionsState>,
              TransactionsState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(PayoutsNotifier)
const payoutsProvider = PayoutsNotifierProvider._();

final class PayoutsNotifierProvider
    extends $NotifierProvider<PayoutsNotifier, PayoutsState> {
  const PayoutsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'payoutsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$payoutsNotifierHash();

  @$internal
  @override
  PayoutsNotifier create() => PayoutsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PayoutsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PayoutsState>(value),
    );
  }
}

String _$payoutsNotifierHash() => r'd5ad1d6db31b8d93f5446e11e1c78715b3726955';

abstract class _$PayoutsNotifier extends $Notifier<PayoutsState> {
  PayoutsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PayoutsState, PayoutsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PayoutsState, PayoutsState>,
              PayoutsState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(RedeemNotifier)
const redeemProvider = RedeemNotifierProvider._();

final class RedeemNotifierProvider
    extends $NotifierProvider<RedeemNotifier, RedeemState> {
  const RedeemNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'redeemProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$redeemNotifierHash();

  @$internal
  @override
  RedeemNotifier create() => RedeemNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RedeemState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RedeemState>(value),
    );
  }
}

String _$redeemNotifierHash() => r'30cfc86e8b84960d18f6d97ed67eb15b0383e8ab';

abstract class _$RedeemNotifier extends $Notifier<RedeemState> {
  RedeemState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RedeemState, RedeemState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RedeemState, RedeemState>,
              RedeemState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ordersList)
const ordersListProvider = OrdersListProvider._();

final class OrdersListProvider
    extends
        $FunctionalProvider<
          List<OrderEntity>,
          List<OrderEntity>,
          List<OrderEntity>
        >
    with $Provider<List<OrderEntity>> {
  const OrdersListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ordersListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ordersListHash();

  @$internal
  @override
  $ProviderElement<List<OrderEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<OrderEntity> create(Ref ref) {
    return ordersList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<OrderEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<OrderEntity>>(value),
    );
  }
}

String _$ordersListHash() => r'ceee8cafb328ab094b9868cff6604757f54da77b';

@ProviderFor(transactionsList)
const transactionsListProvider = TransactionsListProvider._();

final class TransactionsListProvider
    extends
        $FunctionalProvider<
          List<TransactionEntity>,
          List<TransactionEntity>,
          List<TransactionEntity>
        >
    with $Provider<List<TransactionEntity>> {
  const TransactionsListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionsListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionsListHash();

  @$internal
  @override
  $ProviderElement<List<TransactionEntity>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<TransactionEntity> create(Ref ref) {
    return transactionsList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<TransactionEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<TransactionEntity>>(value),
    );
  }
}

String _$transactionsListHash() => r'bbeacf0b062d2d93bf85bb485893d462abe5679b';

@ProviderFor(isOrdersLoading)
const isOrdersLoadingProvider = IsOrdersLoadingProvider._();

final class IsOrdersLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsOrdersLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isOrdersLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isOrdersLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isOrdersLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isOrdersLoadingHash() => r'ba2b4009226469b1c43ec80ca3f11f207de16574';

@ProviderFor(isTransactionsLoading)
const isTransactionsLoadingProvider = IsTransactionsLoadingProvider._();

final class IsTransactionsLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsTransactionsLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isTransactionsLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isTransactionsLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isTransactionsLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isTransactionsLoadingHash() =>
    r'e3f875d951df3bc90db4d85b739676031444e953';

@ProviderFor(isPayoutsLoading)
const isPayoutsLoadingProvider = IsPayoutsLoadingProvider._();

final class IsPayoutsLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsPayoutsLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isPayoutsLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isPayoutsLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isPayoutsLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isPayoutsLoadingHash() => r'6229f59a64e1674f920b0c5d2f311b7a42749c19';

@ProviderFor(isRedeemLoading)
const isRedeemLoadingProvider = IsRedeemLoadingProvider._();

final class IsRedeemLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsRedeemLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isRedeemLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isRedeemLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isRedeemLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isRedeemLoadingHash() => r'4185f36c0bea815f989666b550b94964c62cb3c8';

@ProviderFor(ordersErrorMessage)
const ordersErrorMessageProvider = OrdersErrorMessageProvider._();

final class OrdersErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const OrdersErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ordersErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ordersErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return ordersErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$ordersErrorMessageHash() =>
    r'a98d0f1e61a3ae81e2074cac53d0ae9c035a9caf';

@ProviderFor(transactionsErrorMessage)
const transactionsErrorMessageProvider = TransactionsErrorMessageProvider._();

final class TransactionsErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const TransactionsErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionsErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionsErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return transactionsErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$transactionsErrorMessageHash() =>
    r'44aff37b1f96b46f33ccb7ac2df634b0c0d1466f';

@ProviderFor(payoutsErrorMessage)
const payoutsErrorMessageProvider = PayoutsErrorMessageProvider._();

final class PayoutsErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const PayoutsErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'payoutsErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$payoutsErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return payoutsErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$payoutsErrorMessageHash() =>
    r'950c304a77f4cd0c375fad7b5eacb53a278b57cd';

@ProviderFor(redeemErrorMessage)
const redeemErrorMessageProvider = RedeemErrorMessageProvider._();

final class RedeemErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const RedeemErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'redeemErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$redeemErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return redeemErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$redeemErrorMessageHash() =>
    r'9684657cd44cc143d1d083f21021d04ba070b0a5';

@ProviderFor(hasOrdersError)
const hasOrdersErrorProvider = HasOrdersErrorProvider._();

final class HasOrdersErrorProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasOrdersErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasOrdersErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasOrdersErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasOrdersError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasOrdersErrorHash() => r'2aecc2c0b50a4527cd2373c346e2d7f9c801b30e';

@ProviderFor(hasTransactionsError)
const hasTransactionsErrorProvider = HasTransactionsErrorProvider._();

final class HasTransactionsErrorProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasTransactionsErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasTransactionsErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasTransactionsErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasTransactionsError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasTransactionsErrorHash() =>
    r'459957d55af143c67a8e13a87d672907dd1dab4a';

@ProviderFor(hasPayoutsError)
const hasPayoutsErrorProvider = HasPayoutsErrorProvider._();

final class HasPayoutsErrorProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasPayoutsErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasPayoutsErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasPayoutsErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasPayoutsError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasPayoutsErrorHash() => r'ed21656f8ade5d27ac98c40a5c23b6ecd285a589';

@ProviderFor(hasRedeemError)
const hasRedeemErrorProvider = HasRedeemErrorProvider._();

final class HasRedeemErrorProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasRedeemErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasRedeemErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasRedeemErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasRedeemError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasRedeemErrorHash() => r'00688e0d303ecdabf2e5e8ba38abf2da15034f81';

@ProviderFor(hasOrdersData)
const hasOrdersDataProvider = HasOrdersDataProvider._();

final class HasOrdersDataProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasOrdersDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasOrdersDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasOrdersDataHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasOrdersData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasOrdersDataHash() => r'4e1e439dbe951d03fd394e693a1ab1cbfeb38589';

@ProviderFor(hasTransactionsData)
const hasTransactionsDataProvider = HasTransactionsDataProvider._();

final class HasTransactionsDataProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasTransactionsDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasTransactionsDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasTransactionsDataHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasTransactionsData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasTransactionsDataHash() =>
    r'7514334766d2f3a0ef6e1e7e51620d93af60e7f6';

@ProviderFor(hasPayoutsData)
const hasPayoutsDataProvider = HasPayoutsDataProvider._();

final class HasPayoutsDataProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const HasPayoutsDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasPayoutsDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasPayoutsDataHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasPayoutsData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasPayoutsDataHash() => r'dee9b2affd687558ed9964b8fcf8d9eedce7b947';

@ProviderFor(redeemSuccess)
const redeemSuccessProvider = RedeemSuccessProvider._();

final class RedeemSuccessProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const RedeemSuccessProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'redeemSuccessProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$redeemSuccessHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return redeemSuccess(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$redeemSuccessHash() => r'8a399d250658046bbd3a4d905aaffa8b0975ad76';

@ProviderFor(ordersData)
const ordersDataProvider = OrdersDataProvider._();

final class OrdersDataProvider
    extends $FunctionalProvider<OrdersEntity?, OrdersEntity?, OrdersEntity?>
    with $Provider<OrdersEntity?> {
  const OrdersDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ordersDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ordersDataHash();

  @$internal
  @override
  $ProviderElement<OrdersEntity?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OrdersEntity? create(Ref ref) {
    return ordersData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrdersEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrdersEntity?>(value),
    );
  }
}

String _$ordersDataHash() => r'7e56363e7329a38e7ab3ce8f5d7be93355a2f6c6';

@ProviderFor(transactionsData)
const transactionsDataProvider = TransactionsDataProvider._();

final class TransactionsDataProvider
    extends
        $FunctionalProvider<
          TransactionsEntity?,
          TransactionsEntity?,
          TransactionsEntity?
        >
    with $Provider<TransactionsEntity?> {
  const TransactionsDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionsDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionsDataHash();

  @$internal
  @override
  $ProviderElement<TransactionsEntity?> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TransactionsEntity? create(Ref ref) {
    return transactionsData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TransactionsEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TransactionsEntity?>(value),
    );
  }
}

String _$transactionsDataHash() => r'd3847da8e9459defdc7d2dac6c8ec9f5519bbd4c';

@ProviderFor(payoutsData)
const payoutsDataProvider = PayoutsDataProvider._();

final class PayoutsDataProvider
    extends $FunctionalProvider<PayoutsEntity?, PayoutsEntity?, PayoutsEntity?>
    with $Provider<PayoutsEntity?> {
  const PayoutsDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'payoutsDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$payoutsDataHash();

  @$internal
  @override
  $ProviderElement<PayoutsEntity?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PayoutsEntity? create(Ref ref) {
    return payoutsData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PayoutsEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PayoutsEntity?>(value),
    );
  }
}

String _$payoutsDataHash() => r'b7fc63fca213c3a3f02e43b9ae109018d26f721a';
