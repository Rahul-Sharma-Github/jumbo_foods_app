import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/features/users_panel/home/presentation/pages/home_page.dart';

import 'app/core/routes/app_pages/home_page_nested_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jumbo Foods',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        textTheme: Typography.blackMountainView,
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => const HomePage(),
            children: homePageNestedPages),
        // GetPage(name: '/screen1', page: () => Screen1(),),
        // GetPage(name: '/screen2', page: () => Screen2(),),
        // GetPage(name: '/screen3', page: () => Screen3(),),
      ],
      home: const HomePage(),
    );
  }
}
