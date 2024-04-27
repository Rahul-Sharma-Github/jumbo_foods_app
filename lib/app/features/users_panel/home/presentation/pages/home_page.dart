// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// carousel_slider package
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jumbo_foods_app/app/core/constants/assets_path/assets_path.dart';
import 'package:jumbo_foods_app/app/core/constants/theme/colors/colors.dart';
import 'package:jumbo_foods_app/app/core/constants/theme/textstyles/textstyle.dart';
import '../../../food_category/presentation/pages/food_category_page.dart';
import '../controllers/home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    // double screenHeight = mediaQueryData.size.height;
    return Scaffold(
      // Whole Page is Scrollable
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
              SizedBox(height: screenWidth > 1280 ? 100 : 40.0),

              // Title Widget
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Explore Our Delicious Categories',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      textScaler:
                          TextScaler.linear(screenWidth > 1280 ? 2.0 : 1.0),
                      style: AppTextStyle.categoryTitle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenWidth > 1280 ? 60.0 : 30.0),

              // GridView Widget
              GridView.builder(
                shrinkWrap: true,
                itemCount: homePageController.foodCategoryList.length,
                physics: const ClampingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenWidth > 1280 ? 4 : 3,
                  crossAxisSpacing: screenWidth > 1280 ? 40 : 12,
                  mainAxisSpacing: screenWidth > 1280 ? 40 : 14,
                  // mainAxisExtent: 150,
                  childAspectRatio: screenWidth > 1280 ? 0.75 : 0.65,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FoodCategoryPage(
                            category: homePageController.foodCategoryList[index]
                                ['name']!,
                          ),
                        ),
                      );
                    },
                    child: InkWell(
                      mouseCursor: SystemMouseCursors.click,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.gridChildContainerBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: screenWidth > 1280 ? 3 : 2,
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
                                        homePageController
                                            .foodCategoryList[index]['name']!,
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: screenWidth > 1280
                                            ? AppTextStyle.categoryNameforWeb
                                            : AppTextStyle.categoryName,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: screenWidth > 1280 ? 100.0 : 40.0),
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
