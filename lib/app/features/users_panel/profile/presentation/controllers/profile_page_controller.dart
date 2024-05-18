import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePageController extends GetxController {
  // Function to launch Google Map App with Specified Location
  Future<void> navigateToMap(String url) async {
    final mapUrl = url;
    if (mapUrl.isNotEmpty) {
      await launchUrl(Uri.parse(mapUrl));
    } else {
      Get.snackbar(
        'App Not Available',
        'Install Google Map First !',
        backgroundColor: Colors.orange[300],
      );
    }
  }
}
