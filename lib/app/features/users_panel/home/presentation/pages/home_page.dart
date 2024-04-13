// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// carousel_slider package
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jumbo_foods_app/app/core/constants/assets_path/assets_path.dart';
import 'package:jumbo_foods_app/app/core/constants/theme/colors/colors.dart';
import '../controllers/home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Carousel_Slider Widget
              const SizedBox(height: 10.0),
              Center(
                child: SizedBox(
                  child: CarouselSlider.builder(
                    itemCount: homePageController.imageList.length,
                    itemBuilder: (context, index, realIndex) {
                      return Image.asset(homePageController.imageList[index]);
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40.0),

              // Title Widget
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Explore Our Delicious Categories',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      textScaler: TextScaler.linear(1.0),
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),

              // GridView Widget
              GridView.builder(
                shrinkWrap: true,
                itemCount: homePageController.foodCategoryList.length,
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 14,
                  // mainAxisExtent: 150,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: AppColors.gridChildContainerBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            decoration: BoxDecoration(
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(16.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(homePageController
                                    .foodCategoryList[index]['image']!),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          flex: 1,
                          child: Center(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    homePageController.foodCategoryList[index]
                                        ['name']!,
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 40.0),
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
