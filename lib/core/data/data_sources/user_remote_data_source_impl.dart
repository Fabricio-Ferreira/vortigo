import 'package:dio/dio.dart';
import 'package:vortigo/core/data/model/user_model.dart';

import 'user_remote_data_source.dart';

const String baseUrl = 'https://api.github.com/users/torvalds';

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio _dio;

  UserRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<UserModel> getUser() async {
    final response = await _dio.get(baseUrl);

    final statusCode = response.statusCode;
    if (statusCode != 200) {
      throw Exception('Error getting user');
    }

    return UserModel.fromMap(response.data as Map<String, dynamic>);
  }
}
