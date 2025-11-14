import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:riverpod_rewards/config/errors/failure.dart';
import 'package:riverpod_rewards/core/domain/usecases/base_usecase.dart';
import 'package:riverpod_rewards/features/tasks/domain/parameters/add_task_order_parameters.dart';
import 'package:riverpod_rewards/features/tasks/domain/repository/tasks_repository.dart';

@lazySingleton
class AddTaskOrderUseCase extends UseCase<void, AddTaskOrderParameters> {
  final TasksRepository tasksRepository;

  AddTaskOrderUseCase(this.tasksRepository);

  @override
  Future<Either<Failure, void>> call({required AddTaskOrderParameters params}) async {
    return await tasksRepository.addTaskOrder(params);
  }
}
