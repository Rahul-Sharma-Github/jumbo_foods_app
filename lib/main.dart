import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/features/users_panel/home/presentation/pages/home_wrapper_.dart';
// import 'package:jumbo_foods_app/app/features/users_panel/instagram/presentation/pages/instagram_page.dart';
// import 'package:jumbo_foods_app/app/features/users_panel/profile/presentation/pages/profile_page.dart';
// import 'package:jumbo_foods_app/app/features/users_panel/whataspp/presentation/pages/whatsapp_page.dart';

// import 'app/core/routes/app_pages/food_offers_nested_pages.dart';
// import 'app/core/routes/app_pages/home_page_nested_pages.dart';
// import 'app/features/users_panel/food_offers/presentation/pages/food_offers_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomeWrapperPage(),
      },
      // getPages: [
      //   GetPage(
      //     name: '/',
      //     page: () => HomeWrapperPage(),
      //     children: homePageNestedPages,
      //   ),
      //   GetPage(
      //     name: '/Food_Offers',
      //     page: () => const FoodOffersPage(),
      //     children: foodOffersNestedPages,
      //   ),
      //   GetPage(
      //     name: '/WhatsApp',
      //     page: () => const WhatsappPage(),
      //     // children: foodOffersNestedPages,
      //   ),
      //   GetPage(
      //     name: '/Instagram',
      //     page: () => const InstagramPage(),
      //     // children: foodOffersNestedPages,
      //   ),
      //   GetPage(
      //     name: '/Profile',
      //     page: () => const ProfilePage(),
      //   ),
      // ],
    );
  }
}
