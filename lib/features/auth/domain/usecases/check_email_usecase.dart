import 'package:dartz/dartz.dart';
import 'package:riverpod_rewards/config/errors/failure.dart';
import 'package:riverpod_rewards/core/domain/usecases/base_usecase.dart';
import 'package:riverpod_rewards/features/auth/domain/entities/check_email_entity.dart';
import 'package:riverpod_rewards/features/auth/domain/parameters/check_email_parameters.dart';
import 'package:riverpod_rewards/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CheckEmailUseCase extends UseCase<CheckEmailEntity, CheckEmailParameters> {
  final IAuthRepository authRepository;

  CheckEmailUseCase(this.authRepository);

  @override
  Future<Either<Failure, CheckEmailEntity>> call({required CheckEmailParameters params}) async {
    return await authRepository.checkEmail(params);
  }
}
