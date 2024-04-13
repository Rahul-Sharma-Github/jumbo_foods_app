import 'package:flutter/material.dart';

// carousel_slider package
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

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
              // Carousel_Slider
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
                      // enlargeCenterPage: true,
                      viewportFraction: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
