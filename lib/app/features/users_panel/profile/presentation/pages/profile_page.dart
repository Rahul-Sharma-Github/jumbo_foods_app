import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/core/constants/theme/textstyles/textstyle.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/constants/assets_path/assets_path.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final ProfilePageController profilePageController =
      Get.put(ProfilePageController());

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    // double screenHeight = mediaQueryData.size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0),

              // Google Map Widget
              const Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      'Location on Map',
                      style: AppTextStyle.profileTitles,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  margin: EdgeInsets.zero,
                  child: Center(
                    child: OutlinedButton(
                      style: const ButtonStyle(),
                      onPressed: () async {
                        // Launching Google Map App with Specified Location
                        const String mapUrl =
                            "https://maps.app.goo.gl/KiQgkUd3nsGJgUoE6";
                        if (mapUrl.isNotEmpty) {
                          await launchUrl(Uri.parse(mapUrl));
                        } else {
                          Get.snackbar(
                            'App Not Available',
                            'Install Google Map First !',
                            backgroundColor: Colors.orange[300],
                          );
                        }
                      },
                      child: const Text('See Direction on Google Map'),
                    ),
                  ),
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
                      style: AppTextStyle.profileTitles,
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
                              style: AppTextStyle.profileAddresstitle,
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
                width: screenWidth > 1280 ? 500 : 350,
                child: Image.asset(
                  AssetsPaths.bottomLogoImage,
                ),
              ),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
