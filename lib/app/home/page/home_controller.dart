import 'package:get/get.dart';
import 'package:vortigo/core/domain/usecases/base/base_usecase.dart';
import 'package:vortigo/core/domain/usecases/get_user_usecase.dart';

class HomeController extends GetxController {
  final GetUserUsecase _usecase;

  HomeController({required GetUserUsecase usecase}) : _usecase = usecase;

  final image = ''.obs;

  @override
  void onInit() {
    _getUser();
    super.onInit();
  }

  Future _getUser() async {
    final result = await _usecase.call(NoParams());
    result.fold((l) => print(l), (r) => image.value = r.avatarUrl);
  }
}
