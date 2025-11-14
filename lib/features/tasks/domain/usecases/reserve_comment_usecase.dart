import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod_rewards/config/errors/failure.dart';
import 'package:riverpod_rewards/core/domain/usecases/base_usecase.dart';
import 'package:riverpod_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';
import 'package:riverpod_rewards/features/tasks/domain/parameters/reserve_comment_parameters.dart';
import 'package:riverpod_rewards/features/tasks/domain/repository/tasks_repository.dart';

@lazySingleton
class ReserveCommentUseCase extends UseCase<ReserveCommentEntity, ReserveCommentParameters> {
  final TasksRepository tasksRepository;

  ReserveCommentUseCase(this.tasksRepository);

  @override
  Future<Either<Failure, ReserveCommentEntity>> call({required ReserveCommentParameters params}) async {
    return await tasksRepository.reserveComment(params);
  }
}
