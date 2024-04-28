import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            SizedBox(),

            // Whatsapp App Navigation Button
            ElevatedButton(
              onPressed: () {
                whatsAppPageController.launchWhatsApp('918233330940');
              },
              child: const Text('WhatsApp Us'),
            ),
          ],
        ),
      ),
    );
  }
}
