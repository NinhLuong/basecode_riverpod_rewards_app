import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_orders_entity.dart';
import 'package:magic_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_orders_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/add_task_order_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/reserve_comment_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/repository/tasks_repository.dart';

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
  FutureOr<TasksEntity> build() async {
    return fetchTasks();
  }

  Future<TasksEntity> fetchTasks() async {
    final repository = ref.read(tasksRepositoryProvider);
    final result = await repository.getTasks(TasksParameters());
    
    return result.fold(
      (failure) => throw failure,
      (tasks) => tasks,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final result = await fetchTasks();
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Task orders notifier
@riverpod
class TaskOrdersNotifier extends _$TaskOrdersNotifier {
  @override
  FutureOr<TasksOrdersEntity?> build() {
    return null; // Don't auto-load, load on demand
  }

  Future<void> fetchTaskOrders() async {
    state = const AsyncLoading();
    try {
      final repository = ref.read(tasksRepositoryProvider);
      final result = await repository.getTasksOrders(TasksOrdersParameters());
      
      result.fold(
        (failure) => throw failure,
        (orders) => state = AsyncData(orders),
      );
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Reserve comment notifier
@riverpod
class ReserveCommentNotifier extends _$ReserveCommentNotifier {
  @override
  FutureOr<ReserveCommentEntity?> build() {
    return null;
  }

  Future<void> reserveComment({
    required String taskId,
  }) async {
    state = const AsyncLoading();
    try {
      final repository = ref.read(tasksRepositoryProvider);
      final params = ReserveCommentParameters(taskId: taskId);
      final result = await repository.reserveComment(params);
      
      result.fold(
        (failure) => throw failure,
        (reserveResult) => state = AsyncData(reserveResult),
      );
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

// Add task order action
@riverpod
class AddTaskOrderNotifier extends _$AddTaskOrderNotifier {
  @override
  FutureOr<bool?> build() {
    return null;
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
    state = const AsyncLoading();
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
List<TaskEntity> tasksList(Ref ref) {
  final asyncValue = ref.watch(tasksProvider);
  return asyncValue.value?.tasks ?? [];
}

@riverpod
bool isTasksLoading(Ref ref) {
  final asyncValue = ref.watch(tasksProvider);
  return asyncValue.isLoading;
}

@riverpod
String? tasksErrorMessage(Ref ref) {
  final asyncValue = ref.watch(tasksProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}
