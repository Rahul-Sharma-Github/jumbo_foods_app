import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/food_category_controller.dart';

class FoodCategoryPage extends StatelessWidget {
  FoodCategoryPage({super.key, required this.category});

  final String category;

  final FoodCategoryController foodCategoryController =
      Get.put(FoodCategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(category),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ListView.builder Widget
              FutureBuilder(
                future:
                    foodCategoryController.fetchMenuItemsByCategory(category),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ExpansionTile(
                          title: Text(snapshot.data[index]['itemname']!),
                        );
                      },
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
