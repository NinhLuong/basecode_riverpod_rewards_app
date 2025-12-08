import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod_rewards/config/errors/failure.dart';
import 'package:riverpod_rewards/core/domain/usecases/base_usecase.dart';
import 'package:riverpod_rewards/features/auth/domain/entities/user_entity.dart';
import 'package:riverpod_rewards/features/auth/domain/repository/auth_repository.dart';

@lazySingleton
class GetUserLocalUseCase extends UseCase<UserEntity?, NoParams> {
  final IAuthRepository _repository;

  GetUserLocalUseCase(this._repository);

  @override
  Future<Either<Failure, UserEntity?>> call({required NoParams params}) {
    return _repository.getUserLocal();
  }
}
