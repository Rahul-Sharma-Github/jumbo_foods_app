import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/core/constants/assets_path/assets_path.dart';

import '../controllers/instagram_page_controller.dart';

class InstagramPage extends StatelessWidget {
  InstagramPage({super.key});

  final InstagramPageController instagramPageController =
      Get.put(InstagramPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // instagram logo image
            SizedBox(
              height: 500,
              width: 500,
              child: Image.asset(AssetsPaths.instagramBackLogo),
            ),

            // Button to navigate to instagram app with specific profile
            ElevatedButton(
              onPressed: () async {
                instagramPageController.launchInstagram('jumbofoods_');
              },
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  const BorderSide(width: 1.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Visit Instagram Profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
