import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/rewards/domain/entities/orders_entity.dart';
import 'package:magic_rewards/features/rewards/domain/entities/transactions_entity.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';

part 'rewards_state.freezed.dart';

@freezed
sealed class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _OrdersInitial;
  const factory OrdersState.loading() = _OrdersLoading;
  const factory OrdersState.success(OrdersEntity data) = _OrdersSuccess;
  const factory OrdersState.error(Failure failure) = _OrdersError;
  const factory OrdersState.refreshing(OrdersEntity currentData) = _OrdersRefreshing;
}

extension OrdersStateX on OrdersState {
  bool get isInitial => this is _OrdersInitial;
  bool get isLoading => this is _OrdersLoading;
  bool get isSuccess => this is _OrdersSuccess;
  bool get isError => this is _OrdersError;
  bool get isRefreshing => this is _OrdersRefreshing;

  OrdersEntity? get data => mapOrNull(
        success: (state) => state.data,
        refreshing: (state) => state.currentData,
      );

  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );

  String? get errorMessage => failure?.message;
  bool get hasData => data != null;
  List<OrderEntity> get orders => data?.orders ?? [];
}

@freezed
sealed class TransactionsState with _$TransactionsState {
  const factory TransactionsState.initial() = _TransactionsInitial;
  const factory TransactionsState.loading() = _TransactionsLoading;
  const factory TransactionsState.success(TransactionsEntity data) = _TransactionsSuccess;
  const factory TransactionsState.error(Failure failure) = _TransactionsError;
  const factory TransactionsState.refreshing(TransactionsEntity currentData) = _TransactionsRefreshing;
}

extension TransactionsStateX on TransactionsState {
  bool get isInitial => this is _TransactionsInitial;
  bool get isLoading => this is _TransactionsLoading;
  bool get isSuccess => this is _TransactionsSuccess;
  bool get isError => this is _TransactionsError;
  bool get isRefreshing => this is _TransactionsRefreshing;

  TransactionsEntity? get data => mapOrNull(
        success: (state) => state.data,
        refreshing: (state) => state.currentData,
      );

  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );

  String? get errorMessage => failure?.message;
  bool get hasData => data != null;
  List<TransactionEntity> get transactions => data?.orders ?? [];
}

@freezed
sealed class PayoutsState with _$PayoutsState {
  const factory PayoutsState.initial() = _PayoutsInitial;
  const factory PayoutsState.loading() = _PayoutsLoading;
  const factory PayoutsState.success(PayoutsEntity data) = _PayoutsSuccess;
  const factory PayoutsState.error(Failure failure) = _PayoutsError;
  const factory PayoutsState.refreshing(PayoutsEntity currentData) = _PayoutsRefreshing;
}

extension PayoutsStateX on PayoutsState {
  bool get isInitial => this is _PayoutsInitial;
  bool get isLoading => this is _PayoutsLoading;
  bool get isSuccess => this is _PayoutsSuccess;
  bool get isError => this is _PayoutsError;
  bool get isRefreshing => this is _PayoutsRefreshing;

  PayoutsEntity? get data => mapOrNull(
        success: (state) => state.data,
        refreshing: (state) => state.currentData,
      );

  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );

  String? get errorMessage => failure?.message;
  bool get hasData => data != null;
}

@freezed
sealed class RedeemState with _$RedeemState {
  const factory RedeemState.initial() = _RedeemInitial;
  const factory RedeemState.loading() = _RedeemLoading;
  const factory RedeemState.success() = _RedeemSuccess;
  const factory RedeemState.error(Failure failure) = _RedeemError;
}

extension RedeemStateX on RedeemState {
  bool get isInitial => this is _RedeemInitial;
  bool get isLoading => this is _RedeemLoading;
  bool get isSuccess => this is _RedeemSuccess;
  bool get isError => this is _RedeemError;

  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );

  String? get errorMessage => failure?.message;
}
