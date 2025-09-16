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
    extends $AsyncNotifierProvider<OrdersNotifier, OrdersEntity> {
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
}

String _$ordersNotifierHash() => r'a30de36c3b968a808704ecee3b6119de34b075a3';

abstract class _$OrdersNotifier extends $AsyncNotifier<OrdersEntity> {
  FutureOr<OrdersEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<OrdersEntity>, OrdersEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<OrdersEntity>, OrdersEntity>,
              AsyncValue<OrdersEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(TransactionsNotifier)
const transactionsProvider = TransactionsNotifierProvider._();

final class TransactionsNotifierProvider
    extends $AsyncNotifierProvider<TransactionsNotifier, TransactionsEntity> {
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
}

String _$transactionsNotifierHash() =>
    r'60f7dc2df204079eed907eb8be34b8ebc6bbfd28';

abstract class _$TransactionsNotifier
    extends $AsyncNotifier<TransactionsEntity> {
  FutureOr<TransactionsEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<TransactionsEntity>, TransactionsEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TransactionsEntity>, TransactionsEntity>,
              AsyncValue<TransactionsEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(PayoutsNotifier)
const payoutsProvider = PayoutsNotifierProvider._();

final class PayoutsNotifierProvider
    extends $AsyncNotifierProvider<PayoutsNotifier, PayoutsEntity> {
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
}

String _$payoutsNotifierHash() => r'0ae47d61e216f2eed288763ee6313bcb1d5c9830';

abstract class _$PayoutsNotifier extends $AsyncNotifier<PayoutsEntity> {
  FutureOr<PayoutsEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<PayoutsEntity>, PayoutsEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PayoutsEntity>, PayoutsEntity>,
              AsyncValue<PayoutsEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(RedeemNotifier)
const redeemProvider = RedeemNotifierProvider._();

final class RedeemNotifierProvider
    extends $AsyncNotifierProvider<RedeemNotifier, bool?> {
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
}

String _$redeemNotifierHash() => r'4e41fed33cec9d75d67a875b0b78f6647cd5f63d';

abstract class _$RedeemNotifier extends $AsyncNotifier<bool?> {
  FutureOr<bool?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool?>, bool?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool?>, bool?>,
              AsyncValue<bool?>,
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

String _$ordersListHash() => r'7a5aa196ce7d5ff1c78fdd315f1885e6f03a842a';

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

String _$transactionsListHash() => r'0d3eb15750e2dabb8eda3983079ef0b97b9328b3';

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

String _$isOrdersLoadingHash() => r'2037304c7f0d452b0b4fceea0990d3c4116e74f1';

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
    r'8b01e68bec1304e988e813ff2cb894e29c647b15';

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

String _$isRedeemLoadingHash() => r'e02997f40b6e618bc509d40b66079940882f457e';

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
    r'f61b1d4a373250b4ed15b0363e3e4979941eccfb';

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
    r'eb2a1d5a16b15281c5e27dc6b1a761fbf506417a';

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
    r'110d7474639ae5c3f232a35ec69ee2ffe6116b14';
