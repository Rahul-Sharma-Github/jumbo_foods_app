import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppPageController extends GetxController {
  // Method to Launch WhatsApp App & Navigate to WhatsApp Profile
  void launchWhatsApp(String phone, {String? message}) async {
    // Specifying WhatsApp profile url with Ph. Number
    String url = 'https://wa.me/$phone';

    // if user provide message then, it will be concated with the url
    if (message != null) {
      // concatenation
      url += '?text=${Uri.encodeComponent(message)}';
    }

    // checking if your phone have a app to handle this url
    if (await canLaunchUrl(Uri.parse(url))) {
      // if have, then launch the url inside supported App (WhatsApp)
      await launchUrl(Uri.parse(url));
    } else {
      // else, Show the Warning
      Get.snackbar(
        'App Not Available',
        'Install WhatsApp First !',
        backgroundColor: Colors.orange[300],
      );
    }
  }
}
