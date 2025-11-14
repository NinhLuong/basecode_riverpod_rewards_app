import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_rewards/config/di/injectable_config.dart';
import 'package:riverpod_rewards/config/errors/errors_handler.dart';
import 'package:riverpod_rewards/features/rewards/domain/entities/orders_entity.dart';
import 'package:riverpod_rewards/features/rewards/domain/entities/transactions_entity.dart';
import 'package:riverpod_rewards/features/rewards/domain/entities/payouts_entity.dart';
import 'package:riverpod_rewards/features/rewards/domain/parameters/orders_parameters.dart';
import 'package:riverpod_rewards/features/rewards/domain/parameters/redeem_parameters.dart';
import 'package:riverpod_rewards/features/rewards/domain/parameters/transactions_parameters.dart';
import 'package:riverpod_rewards/features/rewards/domain/parameters/payouts_parameters.dart';
import 'package:riverpod_rewards/features/rewards/domain/repository/rewards_repository.dart';
import 'package:riverpod_rewards/features/rewards/presentation/state/rewards_state.dart';

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
  OrdersState build() {
    // Auto-fetch on build
    _fetchOrders();
    return const OrdersState.initial();
  }

  Future<void> _fetchOrders() async {
    state = const OrdersState.loading();

    try {
      final repository = ref.read(rewardsRepositoryProvider);
      final result = await repository.getOrders(OrdersParameters());
      
      result.fold(
        (failure) => state = OrdersState.error(failure),
        (orders) => state = OrdersState.success(orders),
      );
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = OrdersState.error(failure);
    }
  }

  Future<void> refresh() async {
    final currentData = state.data;
    if (currentData != null) {
      state = OrdersState.refreshing(currentData);
    } else {
      state = const OrdersState.loading();
    }

    try {
      await _fetchOrders();
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = OrdersState.error(failure);
    }
  }
}

// Transactions notifier
@riverpod
class TransactionsNotifier extends _$TransactionsNotifier {
  @override
  TransactionsState build() {
    // Auto-fetch on build
    _fetchTransactions();
    return const TransactionsState.initial();
  }

  Future<void> _fetchTransactions() async {
    state = const TransactionsState.loading();

    try {
      final repository = ref.read(rewardsRepositoryProvider);
      final result = await repository.getTransactions(TransactionsParameters());
      
      result.fold(
        (failure) => state = TransactionsState.error(failure),
        (transactions) => state = TransactionsState.success(transactions),
      );
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = TransactionsState.error(failure);
    }
  }

  Future<void> refresh() async {
    final currentData = state.data;
    if (currentData != null) {
      state = TransactionsState.refreshing(currentData);
    } else {
      state = const TransactionsState.loading();
    }

    try {
      await _fetchTransactions();
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = TransactionsState.error(failure);
    }
  }
}

// Payouts notifier
@riverpod
class PayoutsNotifier extends _$PayoutsNotifier {
  @override
  PayoutsState build() {
    // Auto-fetch on build
    _fetchPayouts();
    return const PayoutsState.initial();
  }

  Future<void> _fetchPayouts() async {
    state = const PayoutsState.loading();

    try {
      final repository = ref.read(rewardsRepositoryProvider);
      final result = await repository.getPayouts(PayoutsParameters());
      
      result.fold(
        (failure) => state = PayoutsState.error(failure),
        (payouts) => state = PayoutsState.success(payouts),
      );
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = PayoutsState.error(failure);
    }
  }

  Future<void> refresh() async {
    final currentData = state.data;
    if (currentData != null) {
      state = PayoutsState.refreshing(currentData);
    } else {
      state = const PayoutsState.loading();
    }

    try {
      await _fetchPayouts();
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = PayoutsState.error(failure);
    }
  }
}

// Redeem action notifier
@riverpod
class RedeemNotifier extends _$RedeemNotifier {
  @override
  RedeemState build() {
    return const RedeemState.initial();
  }

  Future<void> redeem({
    required String name,
    required String value,
  }) async {
    state = const RedeemState.loading();
    
    try {
      final repository = ref.read(rewardsRepositoryProvider);
      final params = RedeemParameters(
        name: name,
        value: value,
      );
      final result = await repository.redeem(params);
      
      result.fold(
        (failure) => state = RedeemState.error(failure),
        (_) => state = const RedeemState.success(),
      );
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = RedeemState.error(failure);
    }
  }

  void reset() {
    state = const RedeemState.initial();
  }
}

// Convenience providers
@riverpod
List<OrderEntity> ordersList(Ref ref) {
  final state = ref.watch(ordersProvider);
  return state.orders;
}

@riverpod
List<TransactionEntity> transactionsList(Ref ref) {
  final state = ref.watch(transactionsProvider);
  return state.transactions;
}

@riverpod
bool isOrdersLoading(Ref ref) {
  final state = ref.watch(ordersProvider);
  return state.isLoading;
}

@riverpod
bool isTransactionsLoading(Ref ref) {
  final state = ref.watch(transactionsProvider);
  return state.isLoading;
}

@riverpod
bool isPayoutsLoading(Ref ref) {
  final state = ref.watch(payoutsProvider);
  return state.isLoading;
}

@riverpod
bool isRedeemLoading(Ref ref) {
  final state = ref.watch(redeemProvider);
  return state.isLoading;
}

@riverpod
String? ordersErrorMessage(Ref ref) {
  final state = ref.watch(ordersProvider);
  return state.errorMessage;
}

@riverpod
String? transactionsErrorMessage(Ref ref) {
  final state = ref.watch(transactionsProvider);
  return state.errorMessage;
}

@riverpod
String? payoutsErrorMessage(Ref ref) {
  final state = ref.watch(payoutsProvider);
  return state.errorMessage;
}

@riverpod
String? redeemErrorMessage(Ref ref) {
  final state = ref.watch(redeemProvider);
  return state.errorMessage;
}

@riverpod
bool hasOrdersError(Ref ref) {
  final state = ref.watch(ordersProvider);
  return state.isError;
}

@riverpod
bool hasTransactionsError(Ref ref) {
  final state = ref.watch(transactionsProvider);
  return state.isError;
}

@riverpod
bool hasPayoutsError(Ref ref) {
  final state = ref.watch(payoutsProvider);
  return state.isError;
}

@riverpod
bool hasRedeemError(Ref ref) {
  final state = ref.watch(redeemProvider);
  return state.isError;
}

@riverpod
bool hasOrdersData(Ref ref) {
  final state = ref.watch(ordersProvider);
  return state.hasData;
}

@riverpod
bool hasTransactionsData(Ref ref) {
  final state = ref.watch(transactionsProvider);
  return state.hasData;
}

@riverpod
bool hasPayoutsData(Ref ref) {
  final state = ref.watch(payoutsProvider);
  return state.hasData;
}

@riverpod
bool redeemSuccess(Ref ref) {
  final state = ref.watch(redeemProvider);
  return state.isSuccess;
}

@riverpod
OrdersEntity? ordersData(Ref ref) {
  final state = ref.watch(ordersProvider);
  return state.data;
}

@riverpod
TransactionsEntity? transactionsData(Ref ref) {
  final state = ref.watch(transactionsProvider);
  return state.data;
}

@riverpod
PayoutsEntity? payoutsData(Ref ref) {
  final state = ref.watch(payoutsProvider);
  return state.data;
}
