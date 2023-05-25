import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/demo/presentation/routes/app_pages.dart';
import 'package:machine_test/demo/presentation/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.appRoutes,
      initialRoute: AppPages.landingPage,
      theme: ThemeData(
          textTheme: const TextTheme(
              titleLarge:
                  TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
    );
  }
}
