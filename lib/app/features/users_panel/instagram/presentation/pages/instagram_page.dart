import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/instagram_page_controller.dart';

class InstagramPage extends StatelessWidget {
  InstagramPage({super.key});

  final InstagramPageController instagramPageController =
      Get.put(InstagramPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            instagramPageController.launchInstagram('jumbofoods_');
          },
          child: const Text('Visit Instagram Profile'),
        ),
      ),
    );
  }
}
