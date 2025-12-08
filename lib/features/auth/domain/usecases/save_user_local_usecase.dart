import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod_rewards/config/errors/failure.dart';
import 'package:riverpod_rewards/core/domain/usecases/base_usecase.dart';
import 'package:riverpod_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:riverpod_rewards/features/auth/domain/repository/auth_repository.dart';

@lazySingleton
class SaveUserLocalUseCase extends UseCase<void, UserEntity> {
  final IAuthRepository _repository;

  SaveUserLocalUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call({required UserEntity params}) {
    return _repository.saveUserLocal(params);
  }
}
