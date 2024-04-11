import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/features/users_panel/food_offers/presentation/pages/food_offers_page.dart';
import 'package:jumbo_foods_app/app/features/users_panel/home/presentation/controllers/home_page_controller.dart';
import 'package:jumbo_foods_app/app/features/users_panel/instagram/presentation/pages/instagram_page.dart';
import 'package:jumbo_foods_app/app/features/users_panel/profile/presentation/pages/profile_page.dart';
import 'package:jumbo_foods_app/app/features/users_panel/whataspp/presentation/pages/whatsapp_page.dart';

import '../../../../../global/widget_components/app_bar/appbar.dart';
import 'home_page.dart';

class HomeWrapperPage extends StatelessWidget {
  HomeWrapperPage({super.key});

  // injecting instance of HomePageController class
  final HomePageController homePageController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) async {
        // if true then return nothing
        if (didPop) {
          return;
        }

        // getting delegate
        final Routing delegate = Get.routing;

        // checking if any Dialog or BottomSheet is Open the first close them
        if (delegate.args?.isDialog! || delegate.args?.isBottomSheet!) {
          Get.back(
              closeOverlays:
                  true); // Allow system pop if dialog, snackbar, or bottom sheet is open
        } else {
          // Handle back button manually
          // accessing current Navigation's navigatorKey and Poping a Page from this Navigator
          await delegate.args?.navigatorKey.currentState?.maybePop();
        }
      },
      child: Scaffold(
        appBar: appBar(),
        body: Obx(
          () => IndexedStack(
            index: homePageController.indexOfIndexedStackWidget.value,
            children: const [
              HomePage(),
              FoodOffersPage(),
              WhatsappPage(),
              InstagramPage(),
              ProfilePage(),
            ],
          ),
        ),
        bottomNavigationBar: Obx(
          () => NavigationBar(
            // current selected index
            selectedIndex: homePageController.indexOfIndexedStackWidget.value,
            // changing current selected index on item click
            onDestinationSelected: (index) {
              homePageController.changeIndex(index);
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
      ),
    );
  }
}
