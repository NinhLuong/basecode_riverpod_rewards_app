import 'dart:io';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_rewards/config/di/injectable_config.dart';
import 'package:riverpod_rewards/config/errors/errors_handler.dart';
import 'package:riverpod_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:riverpod_rewards/features/tasks/domain/entities/tasks_orders_entity.dart';
import 'package:riverpod_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';
import 'package:riverpod_rewards/features/tasks/domain/parameters/tasks_parameters.dart';
import 'package:riverpod_rewards/features/tasks/domain/parameters/tasks_orders_parameters.dart';
import 'package:riverpod_rewards/features/tasks/domain/parameters/add_task_order_parameters.dart';
import 'package:riverpod_rewards/features/tasks/domain/parameters/reserve_comment_parameters.dart';
import 'package:riverpod_rewards/features/tasks/domain/repository/tasks_repository.dart';
import 'package:riverpod_rewards/features/tasks/presentation/state/tasks_state.dart';

part 'tasks_providers.g.dart';

// Repository provider
@riverpod
TasksRepository tasksRepository(Ref ref) {
  return getIt<TasksRepository>();
}

// Tasks list notifier
@riverpod
class TasksNotifier extends _$TasksNotifier {
  @override
  TasksState build() {
    // Auto-fetch on build
    _fetchTasks();
    return const TasksState.initial();
  }

  Future<void> _fetchTasks() async {
    state = const TasksState.loading();

    try {
      final repository = ref.read(tasksRepositoryProvider);
      final result = await repository.getTasks(TasksParameters());
      
      result.fold(
        (failure) => state = TasksState.error(failure),
        (tasks) => state = TasksState.success(tasks),
      );
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = TasksState.error(failure);
    }
  }

  Future<void> refresh() async {
    final currentData = state.data;
    if (currentData != null) {
      state = TasksState.refreshing(currentData);
    } else {
      state = const TasksState.loading();
    }

    try {
      await _fetchTasks();
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = TasksState.error(failure);
    }
  }
}

// Task orders notifier
@riverpod
class TaskOrdersNotifier extends _$TaskOrdersNotifier {
  @override
  TaskOrdersState build() {
    return const TaskOrdersState.initial();
  }

  Future<void> fetchTaskOrders() async {
    state = const TaskOrdersState.loading();
    
    try {
      final repository = ref.read(tasksRepositoryProvider);
      final result = await repository.getTasksOrders(TasksOrdersParameters());
      
      result.fold(
        (failure) => state = TaskOrdersState.error(failure),
        (orders) => state = TaskOrdersState.success(orders),
      );
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = TaskOrdersState.error(failure);
    }
  }

  Future<void> refresh() async {
    final currentData = state.data;
    if (currentData != null) {
      state = TaskOrdersState.refreshing(currentData);
    } else {
      state = const TaskOrdersState.loading();
    }

    await fetchTaskOrders();
  }
}

// Reserve comment notifier
@riverpod
class ReserveCommentNotifier extends _$ReserveCommentNotifier {
  @override
  ReserveCommentState build() {
    return const ReserveCommentState.initial();
  }

  Future<void> reserveComment({
    required String taskId,
  }) async {
    state = const ReserveCommentState.loading();
    
    try {
      final repository = ref.read(tasksRepositoryProvider);
      final params = ReserveCommentParameters(taskId: taskId);
      final result = await repository.reserveComment(params);
      
      result.fold(
        (failure) => state = ReserveCommentState.error(failure),
        (reserveResult) => state = ReserveCommentState.success(reserveResult),
      );
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = ReserveCommentState.error(failure);
    }
  }

  void reset() {
    state = const ReserveCommentState.initial();
  }
}

// Add task order action
@riverpod
class AddTaskOrderNotifier extends _$AddTaskOrderNotifier {
  @override
  AddTaskOrderState build() {
    return const AddTaskOrderState.initial();
  }

  Future<void> addTaskOrder({
    required String taskId,
    required String commentId,
    required String name,
    required String url,
    required String email,
    required String text,
    required File image,
    required DateTime timeStamp,
  }) async {
    state = const AddTaskOrderState.loading();
    
    try {
      final repository = ref.read(tasksRepositoryProvider);
      final params = AddTaskOrderParameters(
        taskId: taskId,
        commentId: commentId,
        name: name,
        url: url,
        email: email,
        text: text,
        image: image,
        timeStamp: timeStamp,
      );
      final result = await repository.addTaskOrder(params);
      
      result.fold(
        (failure) => state = AddTaskOrderState.error(failure),
        (_) => state = const AddTaskOrderState.success(),
      );
    } catch (error, stackTrace) {
      final failure = ErrorsHandler.failureThrower(error, stackTrace);
      state = AddTaskOrderState.error(failure);
    }
  }

  void reset() {
    state = const AddTaskOrderState.initial();
  }
}

// Convenience providers
@riverpod
List<TaskEntity> tasksList(Ref ref) {
  final state = ref.watch(tasksProvider);
  return state.tasks;
}

@riverpod
bool isTasksLoading(Ref ref) {
  final state = ref.watch(tasksProvider);
  return state.isLoading;
}

@riverpod
String? tasksErrorMessage(Ref ref) {
  final state = ref.watch(tasksProvider);
  return state.errorMessage;
}

@riverpod
bool hasTasksError(Ref ref) {
  final state = ref.watch(tasksProvider);
  return state.isError;
}

@riverpod
bool hasTasksData(Ref ref) {
  final state = ref.watch(tasksProvider);
  return state.hasData;
}

@riverpod
bool isTasksRefreshing(Ref ref) {
  final state = ref.watch(tasksProvider);
  return state.isRefreshing;
}

@riverpod
bool isTaskOrdersLoading(Ref ref) {
  final state = ref.watch(taskOrdersProvider);
  return state.isLoading;
}

@riverpod
String? taskOrdersErrorMessage(Ref ref) {
  final state = ref.watch(taskOrdersProvider);
  return state.errorMessage;
}

@riverpod
TasksOrdersEntity? taskOrdersData(Ref ref) {
  final state = ref.watch(taskOrdersProvider);
  return state.data;
}

@riverpod
bool isReserveCommentLoading(Ref ref) {
  final state = ref.watch(reserveCommentProvider);
  return state.isLoading;
}

@riverpod
String? reserveCommentErrorMessage(Ref ref) {
  final state = ref.watch(reserveCommentProvider);
  return state.errorMessage;
}

@riverpod
ReserveCommentEntity? reserveCommentResult(Ref ref) {
  final state = ref.watch(reserveCommentProvider);
  return state.result;
}

@riverpod
bool isAddTaskOrderLoading(Ref ref) {
  final state = ref.watch(addTaskOrderProvider);
  return state.isLoading;
}

@riverpod
String? addTaskOrderErrorMessage(Ref ref) {
  final state = ref.watch(addTaskOrderProvider);
  return state.errorMessage;
}

@riverpod
bool addTaskOrderSuccess(Ref ref) {
  final state = ref.watch(addTaskOrderProvider);
  return state.isSuccess;
}
