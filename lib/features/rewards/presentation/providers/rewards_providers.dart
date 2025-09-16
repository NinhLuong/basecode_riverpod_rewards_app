import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/features/rewards/domain/entities/orders_entity.dart';
import 'package:magic_rewards/features/rewards/domain/entities/transactions_entity.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/orders_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/transactions_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/payouts_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/repository/rewards_repository.dart';

part 'rewards_providers.g.dart';

// Repository provider
@riverpod
RewardsRepository rewardsRepository(Ref ref) {
  return getIt<RewardsRepository>();
}

// Orders notifier
@riverpod
class OrdersNotifier extends _$OrdersNotifier {
  @override
  FutureOr<OrdersEntity> build() async {
    return fetchOrders();
  }

  Future<OrdersEntity> fetchOrders() async {
    final repository = ref.read(rewardsRepositoryProvider);
    final result = await repository.getOrders(OrdersParameters());
    
    return result.fold(
      (failure) => throw failure,
      (orders) => orders,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final result = await fetchOrders();
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Transactions notifier
@riverpod
class TransactionsNotifier extends _$TransactionsNotifier {
  @override
  FutureOr<TransactionsEntity> build() async {
    return fetchTransactions();
  }

  Future<TransactionsEntity> fetchTransactions() async {
    final repository = ref.read(rewardsRepositoryProvider);
    final result = await repository.getTransactions(TransactionsParameters());
    
    return result.fold(
      (failure) => throw failure,
      (transactions) => transactions,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final result = await fetchTransactions();
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Payouts notifier
@riverpod
class PayoutsNotifier extends _$PayoutsNotifier {
  @override
  FutureOr<PayoutsEntity> build() async {
    return fetchPayouts();
  }

  Future<PayoutsEntity> fetchPayouts() async {
    final repository = ref.read(rewardsRepositoryProvider);
    final result = await repository.getPayouts(PayoutsParameters());
    
    return result.fold(
      (failure) => throw failure,
      (payouts) => payouts,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final result = await fetchPayouts();
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Redeem action notifier
@riverpod
class RedeemNotifier extends _$RedeemNotifier {
  @override
  FutureOr<bool?> build() {
    return null;
  }

  Future<void> redeem({
    required String name,
    required String value,
  }) async {
    state = const AsyncLoading();
    try {
      final repository = ref.read(rewardsRepositoryProvider);
      final params = RedeemParameters(
        name: name,
        value: value,
      );
      final result = await repository.redeem(params);
      
      result.fold(
        (failure) => throw failure,
        (_) => state = const AsyncData(true),
      );
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Convenience providers
@riverpod
List<OrderEntity> ordersList(Ref ref) {
  final asyncValue = ref.watch(ordersProvider);
  return asyncValue.value?.orders ?? [];
}

@riverpod
List<TransactionEntity> transactionsList(Ref ref) {
  final asyncValue = ref.watch(transactionsProvider);
  return asyncValue.value?.orders ?? [];
}

@riverpod
bool isOrdersLoading(Ref ref) {
  final asyncValue = ref.watch(ordersProvider);
  return asyncValue.isLoading;
}

@riverpod
bool isTransactionsLoading(Ref ref) {
  final asyncValue = ref.watch(transactionsProvider);
  return asyncValue.isLoading;
}

@riverpod
bool isRedeemLoading(Ref ref) {
  final asyncValue = ref.watch(redeemProvider);
  return asyncValue.isLoading;
}

@riverpod
String? ordersErrorMessage(Ref ref) {
  final asyncValue = ref.watch(ordersProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}

@riverpod
String? transactionsErrorMessage(Ref ref) {
  final asyncValue = ref.watch(transactionsProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}

@riverpod
String? redeemErrorMessage(Ref ref) {
  final asyncValue = ref.watch(redeemProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}
