import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:vortigo/app/home/page/home_controller.dart';
import 'package:vortigo/core/data/data_sources/user_remote_data_source_impl.dart';
import 'package:vortigo/core/data/repositories/user_repository_impl.dart';
import 'package:vortigo/core/domain/usecases/get_user_usecase.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio(), permanent: true);
    Get.lazyPut(() => UserRemoteDataSourceImpl(dio: Get.find()));
    Get.lazyPut(() => UserRepositoryImpl(userRemoteDataSource: Get.find()));
    Get.lazyPut(() => GetUserUsecase(repository: Get.find()));
    Get.lazyPut<HomeController>(() => HomeController(
          usecase: Get.find(),
        ));
  }
}
