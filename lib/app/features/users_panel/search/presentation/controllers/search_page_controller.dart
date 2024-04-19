import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/api_source/api_endpoints.dart';
import '../../../../../core/api_source/api_source.dart';

class SearchPageController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await fetchAllMenuItems();
  }

  // controller for TextField Widget
  final textEditingController = TextEditingController().obs;

  // List to store api response
  var dataList = [].obs;

  // List to store filtered response
  var filteredList = [].obs;

  // API Request to get all menu items
  Future<void> fetchAllMenuItems() async {
    try {
      final response = await ApiSource.dio.get(ApiEndpoints.getAllMenuItems);
      if (response.statusCode == 200) {
        dataList.value = await response.data!;
        debugPrint('dataList = $dataList');
        filteredList.value = List.from(dataList);
        debugPrint('filtered List = $filteredList');
      }
    } catch (e) {
      debugPrint('Error while calling fetchAllMenuItems() Method = $e');
    }
  }

  // filter list to get latest filtered data
  void filterData(String query) {
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
