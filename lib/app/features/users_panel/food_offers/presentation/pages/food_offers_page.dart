import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              // GridView.builder Widget
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
