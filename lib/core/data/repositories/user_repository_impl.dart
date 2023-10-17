import 'package:dartz/dartz.dart';
import 'package:vortigo/core/data/data_sources/user_remote_data_source.dart';

import 'package:vortigo/core/domain/entities/user_entity.dart';

import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepositoryImpl({required UserRemoteDataSource userRemoteDataSource})
      : _userRemoteDataSource = userRemoteDataSource;

  @override
  Future<Either<Exception, UserEntity>> getUser() async {
    try {
      final response = await _userRemoteDataSource.getUser();
      return Right(response);
    } catch (e) {
      return Left(e as Exception);
    }
  }
}
