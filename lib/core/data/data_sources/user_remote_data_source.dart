import 'package:vortigo/core/data/model/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser();
}
