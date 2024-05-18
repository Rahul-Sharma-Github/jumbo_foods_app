import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/core/constants/theme/textstyles/textstyle.dart';

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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsPaths.directionBackground),
                  ),
                ),
                height: screenWidth > 1280 ? 450 : 350,
                width: screenWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    vertical: 30, horizontal: 30),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              side: MaterialStateProperty.all(
                                const BorderSide(width: 2.0),
                              ),
                            ),
                            onPressed: () async {
                              // Launching Google Map App with Specified Location
                              profilePageController.navigateToMap(
                                  "https://maps.app.goo.gl/KiQgkUd3nsGJgUoE6");
                            },
                            child: const Text(
                              'See Direction on Google Map',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
              Flexible(
                fit: FlexFit.loose,
                child: Card(
                  margin: EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 20.0),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Text(
                              'JUMBO',
                              style: AppTextStyle.profileAddresstitle,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.location_on_outlined),
                          SizedBox(width: 10.0),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Text(
                                'Near Reliance Mall, Chittor Road, Bhilwara(Raj)'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          const Icon(Icons.call_outlined),
                          const SizedBox(width: 10.0),
                          Flexible(
                            fit: FlexFit.loose,
                            child: GestureDetector(
                              onTap: () async {
                                // Function to Dial a Specified Phone Number
                                profilePageController.dialNumber('8233330940');
                              },
                              child: const Text('+91 82333 30940'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenWidth > 1280 ? 100 : 40),
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
