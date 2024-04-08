import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/features/users_panel/home/presentation/controllers/home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // injecting instance of HomePageController class
  final HomePageController homePageController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
