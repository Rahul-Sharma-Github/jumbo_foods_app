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
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // FutureBuilder Widget  with  ListView.builder Widget
              FutureBuilder(
                future:
                    foodCategoryController.fetchMenuItemsByCategory(category),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        // ExpansionTile Widget
                        return ExpansionTile(
                          dense: false,
                          tilePadding:
                              const EdgeInsets.symmetric(horizontal: 0.0),
                          title: Row(
                            children: [
                              Text(
                                snapshot.data[index]['itemname']!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '= ${snapshot.data[index]['itemprice']!.toString()} \u{20B9}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Row(
                            children: [
                              Text(snapshot.data[index]['addonitemname']!),
                              const SizedBox(width: 5),
                              Text(
                                  '=  +${snapshot.data[index]['addonitemprice']!.toString()} \u{20B9}'),
                            ],
                          ),
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Text(
                                      snapshot.data[index]['description']!),
                                ),
                              ],
                            )
                          ],
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
