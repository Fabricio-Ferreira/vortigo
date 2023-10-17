import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUsecase {
  const BaseUsecase();
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

abstract class BaseFutureUseCase<Result, Params> extends BaseUsecase {
  const BaseFutureUseCase();

  Future<Either<Exception, Result>> call(Params params);
}
