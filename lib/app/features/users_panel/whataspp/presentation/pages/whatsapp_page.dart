import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/core/constants/assets_path/assets_path.dart';

import '../controllers/whatsapp_page_controller.dart';

class WhatsappPage extends StatelessWidget {
  WhatsappPage({super.key});

  final WhatsAppPageController whatsAppPageController =
      Get.put(WhatsAppPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Whatsapp Logo
            SizedBox(
              child: Image.asset(AssetsPaths.whatsappBackLogo),
            ),

            // Whatsapp App Navigation Button
            ElevatedButton(
              onPressed: () {
                whatsAppPageController.launchWhatsApp('918233330940');
              },
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'WhatsApp Us',
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
