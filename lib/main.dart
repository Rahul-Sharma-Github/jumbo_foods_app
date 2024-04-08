import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/features/users_panel/home/presentation/pages/home_page.dart';
import 'package:jumbo_foods_app/app/features/users_panel/profile/presentation/pages/profile_page.dart';

import 'app/core/routes/app_pages/food_offers_nested_pages.dart';
import 'app/core/routes/app_pages/home_page_nested_pages.dart';
import 'app/features/users_panel/food_offers/presentation/pages/food_offers_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
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
          page: () => HomePage(),
          children: homePageNestedPages,
        ),
        GetPage(
          name: '/Food_Offers',
          page: () => const FoodOffersPage(),
          children: foodOffersNestedPages,
        ),
        GetPage(
          name: '/Profile',
          page: () => const ProfilePage(),
        ),
      ],
      home: HomePage(),
    );
  }
}
