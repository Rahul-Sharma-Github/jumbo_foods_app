import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePageController extends GetxController {
  // Google Map using HTML Embed
  Widget showMap(String url) {
    //
    return HtmlElementView(
      viewType: url,
    );
  }
}
