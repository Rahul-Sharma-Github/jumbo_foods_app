import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class InstagramPageController extends GetxController {
  // Method to Launch Instagram App & Navigate to Instagram Profile
  Future<void> launchInstagram(String username) async {
    // // Specifying Instagram profile url with username
    String url = 'https://www.instagram.com/$username/';

    // checking if username is empty or not
    if (username.isNotEmpty) {
      // if Not Empty, then launch the url inside supported App (Instagram)
      await launchUrl(Uri.parse(url));
    } else {
      // else, Show the Warning
      Get.snackbar(
        'App Not Available',
        'Install Instagram First !',
        backgroundColor: Colors.orange[300],
      );
    }
  }
}
