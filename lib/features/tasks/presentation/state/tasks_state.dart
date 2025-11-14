import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_rewards/config/errors/failure.dart';
import 'package:riverpod_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:riverpod_rewards/features/tasks/domain/entities/tasks_orders_entity.dart';
import 'package:riverpod_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';

part 'tasks_state.freezed.dart';

@freezed
sealed class TasksState with _$TasksState {
  const factory TasksState.initial() = _TasksInitial;
  const factory TasksState.loading() = _TasksLoading;
  const factory TasksState.success(TasksEntity data) = _TasksSuccess;
  const factory TasksState.error(Failure failure) = _TasksError;
  const factory TasksState.refreshing(TasksEntity currentData) = _TasksRefreshing;
}

extension TasksStateX on TasksState {
  bool get isInitial => this is _TasksInitial;
  bool get isLoading => this is _TasksLoading;
  bool get isSuccess => this is _TasksSuccess;
  bool get isError => this is _TasksError;
  bool get isRefreshing => this is _TasksRefreshing;

  TasksEntity? get data => mapOrNull(
        success: (state) => state.data,
        refreshing: (state) => state.currentData,
      );

  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );

  String? get errorMessage => failure?.message;
  bool get hasData => data != null;
  List<TaskEntity> get tasks => data?.tasks ?? [];
}

@freezed
sealed class TaskOrdersState with _$TaskOrdersState {
  const factory TaskOrdersState.initial() = _TaskOrdersInitial;
  const factory TaskOrdersState.loading() = _TaskOrdersLoading;
  const factory TaskOrdersState.success(TasksOrdersEntity data) = _TaskOrdersSuccess;
  const factory TaskOrdersState.error(Failure failure) = _TaskOrdersError;
  const factory TaskOrdersState.refreshing(TasksOrdersEntity currentData) = _TaskOrdersRefreshing;
}

extension TaskOrdersStateX on TaskOrdersState {
  bool get isInitial => this is _TaskOrdersInitial;
  bool get isLoading => this is _TaskOrdersLoading;
  bool get isSuccess => this is _TaskOrdersSuccess;
  bool get isError => this is _TaskOrdersError;
  bool get isRefreshing => this is _TaskOrdersRefreshing;

  TasksOrdersEntity? get data => mapOrNull(
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
sealed class ReserveCommentState with _$ReserveCommentState {
  const factory ReserveCommentState.initial() = _ReserveCommentInitial;
  const factory ReserveCommentState.loading() = _ReserveCommentLoading;
  const factory ReserveCommentState.success(ReserveCommentEntity result) = _ReserveCommentSuccess;
  const factory ReserveCommentState.error(Failure failure) = _ReserveCommentError;
}

extension ReserveCommentStateX on ReserveCommentState {
  bool get isInitial => this is _ReserveCommentInitial;
  bool get isLoading => this is _ReserveCommentLoading;
  bool get isSuccess => this is _ReserveCommentSuccess;
  bool get isError => this is _ReserveCommentError;

  ReserveCommentEntity? get result => mapOrNull(success: (state) => state.result);
  
  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );
  
  String? get errorMessage => failure?.message;
  bool get hasResult => result != null;
}

@freezed
sealed class AddTaskOrderState with _$AddTaskOrderState {
  const factory AddTaskOrderState.initial() = _AddTaskOrderInitial;
  const factory AddTaskOrderState.loading() = _AddTaskOrderLoading;
  const factory AddTaskOrderState.success() = _AddTaskOrderSuccess;
  const factory AddTaskOrderState.error(Failure failure) = _AddTaskOrderError;
}

extension AddTaskOrderStateX on AddTaskOrderState {
  bool get isInitial => this is _AddTaskOrderInitial;
  bool get isLoading => this is _AddTaskOrderLoading;
  bool get isSuccess => this is _AddTaskOrderSuccess;
  bool get isError => this is _AddTaskOrderError;

  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );

  String? get errorMessage => failure?.message;
}
