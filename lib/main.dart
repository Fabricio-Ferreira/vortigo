import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vortigo/app/home/binding/home_binding.dart';

import 'app/home/page/home_page.dart';
import 'core/di/remote_module.dart';
import 'core/di/repositories_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DataSourcesModule.init();
  ReposioriesModule.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      initialBinding: HomeBinding(),
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
          binding: HomeBinding(),
        ),
      ],
    );
  }
}
