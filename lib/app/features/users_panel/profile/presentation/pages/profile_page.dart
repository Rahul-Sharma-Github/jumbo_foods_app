import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/assets_path/assets_path.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final ProfilePageController profilePageController =
      Get.put(ProfilePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10.0),

              // Google Map Widget
              const Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      'Location on Map',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: const Card(
                  margin: EdgeInsets.zero,
                  child: Text('Google Map'),
                ),
              ),
              const SizedBox(height: 40),

              // Address Widget
              const Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      'Address',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              const Flexible(
                fit: FlexFit.loose,
                child: Card(
                  margin: EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 5),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Text(
                              'JUMBO',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(width: 10.0),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Text(
                                'Near Reliance Mall, Chittor Road, Bhilwara(Raj)'),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.call_outlined),
                          SizedBox(width: 10.0),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Text('+91 82333 30940'),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Divider(),
              const SizedBox(height: 20.0),

              // Footer Image Widget
              SizedBox(
                width: 300,
                child: Image.asset(AssetsPaths.bottomLogoImage),
              ),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
