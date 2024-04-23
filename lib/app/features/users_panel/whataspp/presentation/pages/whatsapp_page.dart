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
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('WhatsApp Us'),
        ),
      ),
    );
  }
}
