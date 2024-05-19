import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/api_source/api_endpoints.dart';
import '../../../../../core/api_source/api_source.dart';

class SearchPageController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    // Method to Fetch and Store All Menu Items inside dataList variable
    await fetchAllMenuItems();
  }

  // controller for TextField Widget
  final textEditingController = TextEditingController().obs;

  // List to store api response
  var dataList = [].obs;

  // List to store filtered items from dataList
  var filteredList = [].obs;

  // API Request to get all menu items
  Future<void> fetchAllMenuItems() async {
    try {
      final response = await ApiSource.dio.get(ApiEndpoints.getAllMenuItems);
      if (response.statusCode == 200) {
        dataList.value = await response.data!;
        debugPrint('dataList = $dataList');
        // After fetching, initially Storing dataList items inside filteredList
        filteredList.value = List.from(dataList);
        debugPrint('filtered List = $filteredList');
      }
    } catch (e) {
      debugPrint('Error while calling fetchAllMenuItems() Method = $e');
    }
  }

  // filter list to get latest filtered data
  // Filtering from dataList and storing filtered data inside filteredList
  void filterData(String query) {
    // checking for each item in dataList [ if searched Name is equal to itemname ]
    filteredList.value = dataList
        .where(
          (item) => item['itemname']
              .toString()
              .toLowerCase()
              .contains(query.toLowerCase()),
        )
        .toList();
  }
}
