import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/assets_path/assets_path.dart';
import '../controllers/food_offers_controller.dart';

class FoodOffersPage extends StatelessWidget {
  FoodOffersPage({super.key});

  final FoodOffersController foodOffersController =
      Get.put(FoodOffersController());

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
              //
              // GridView.builder Widget to show Food Offers Images
              GridView.builder(
                padding: const EdgeInsets.symmetric(vertical: 20),
                shrinkWrap: true,
                itemCount: foodOffersController.foodOfferImages.length,
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 25,
                  childAspectRatio: 1.75,
                  // mainAxisExtent: 185,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            foodOffersController.foodOfferImages[index],
                          ),
                        )),
                  );
                },
              ),

              //Footer Logo Image
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
