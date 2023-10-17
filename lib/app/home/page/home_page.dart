import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:vortigo/app/home/page/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => controller.image.value.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(controller.image.value),
                    )
                  : const CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
