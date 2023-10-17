import 'package:get/get.dart';
import 'package:vortigo/core/data/data_sources/user_remote_data_source.dart';
import 'package:vortigo/core/data/repositories/user_repository_impl.dart';
import 'package:vortigo/core/domain/repositories/user_repository.dart';

class ReposioriesModule {
  ReposioriesModule._();

  static void init() {
    _injectHomeRepository;
  }

  static void get _injectHomeRepository {
    Get.lazyPut<UserRepository>(
      () => UserRepositoryImpl(userRemoteDataSource: Get.find<UserRemoteDataSource>()),
      fenix: true,
    );
  }
}
