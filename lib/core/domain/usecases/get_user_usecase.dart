import 'package:dartz/dartz.dart';
import 'package:vortigo/core/domain/entities/user_entity.dart';
import 'package:vortigo/core/domain/repositories/user_repository.dart';
import 'package:vortigo/core/domain/usecases/base/base_usecase.dart';

class GetUserUsecase extends BaseFutureUseCase {
  final UserRepository _repository;

  GetUserUsecase({required UserRepository repository}) : _repository = repository;
  @override
  Future<Either<Exception, UserEntity>> call(params) => _repository.getUser();
}
