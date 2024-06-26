import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/features/users_panel/food_offers/presentation/pages/food_offers_page.dart';
import 'package:jumbo_foods_app/app/features/users_panel/home/presentation/controllers/home_wrapper_controller.dart';
import 'package:jumbo_foods_app/app/features/users_panel/instagram/presentation/pages/instagram_page.dart';
import 'package:jumbo_foods_app/app/features/users_panel/profile/presentation/pages/profile_page.dart';
import 'package:jumbo_foods_app/app/features/users_panel/whataspp/presentation/pages/whatsapp_page.dart';

import '../../../../../global/widget_components/app_bar/appbar.dart';
import 'home_page.dart';

class HomeWrapperPage extends StatelessWidget {
  HomeWrapperPage({super.key});

  // injecting instance of homeWrapperController class
  final HomeWrapperController homeWrapperController =
      Get.put(HomeWrapperController());
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    // double screenHeight = mediaQueryData.size.height;
    return Scaffold(
      appBar: appBar(context),
      body:
          // Wrapper for Different Pages
          Obx(
        () => Center(
          child: SizedBox(
            width: screenWidth > 1280 ? screenWidth / 1.5 : screenWidth,
            child: IndexedStack(
              alignment: Alignment.center,
              index: homeWrapperController.indexOfIndexedStackWidget.value,
              children: [
                HomePage(),
                FoodOffersPage(),
                WhatsappPage(),
                InstagramPage(),
                ProfilePage(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          // current selected index
          selectedIndex: homeWrapperController.indexOfIndexedStackWidget.value,
          // changing current selected index on item click
          onDestinationSelected: (index) {
            homeWrapperController.changeIndex(index);
          },
          // Active item color
          indicatorColor: Colors.green,
          // List of Widgets
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.local_offer),
              icon: Icon(Icons.local_offer_outlined),
              label: 'Offers',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.mark_chat_unread),
              icon: Icon(Icons.mark_chat_unread_outlined),
              label: 'WhatsApp',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.chat_bubble),
              icon: Icon(Icons.chat_bubble_outline),
              label: 'Instagram',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
