import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:vortigo/core/data/data_sources/user_remote_data_source.dart';
import 'package:vortigo/core/data/data_sources/user_remote_data_source_impl.dart';

class DataSourcesModule {
  DataSourcesModule._();

  static void init() {
    _injectProductDataSource();
  }

  static void _injectProductDataSource() {
    Get.lazyPut<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(dio: Dio()),
      fenix: true,
    );
  }
}
