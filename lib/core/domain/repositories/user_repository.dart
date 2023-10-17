import 'package:dartz/dartz.dart';
import 'package:vortigo/core/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<Either<Exception, UserEntity>> getUser();
}
