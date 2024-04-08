import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/features/users_panel/home/presentation/controllers/home_page_controller.dart';

import '../../../../../global/widget_components/app_bar/appbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
          // else
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
            !await delegate.args?.navigatorKey.currentState?.maybePop();
          }
        },
        child: Scaffold(
          appBar: appBar(),
        ));
  }
}
