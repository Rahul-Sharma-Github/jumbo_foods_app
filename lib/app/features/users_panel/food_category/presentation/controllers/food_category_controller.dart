import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/core/api_source/api_endpoints.dart';
import 'package:jumbo_foods_app/app/core/api_source/api_source.dart';

class FoodCategoryController extends GetxController {
  /// API Requests

  // Get Request to fetch all Menu Items by Category
  Future<dynamic> fetchMenuItemsByCategory(String category) async {
    try {
      final response = await ApiSource.dio
          .get('${ApiEndpoints.getAllMenuItemsByCategory}/$category');
      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (e) {
      debugPrint('Error while calling fetchMenuItemsByCategory() Method = $e');
    }
  }
}
