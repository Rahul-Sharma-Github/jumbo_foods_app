import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/core/constants/theme/textstyles/textstyle.dart';
import 'package:jumbo_foods_app/app/features/users_panel/search/presentation/controllers/search_page_controller.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final SearchPageController searchPageController =
      Get.put(SearchPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Search TextField Widget
                TextField(
                  controller: searchPageController.textEditingController.value,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search',
                    hintText: 'Search food names here...',
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) {
                    searchPageController.filterData(value);
                  },
                ),
                const SizedBox(height: 15.0),
                // ListView.builder Widget to Display Filtered List Items
                Obx(
                  () => ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: searchPageController.filteredList.length,
                    itemBuilder: (context, index) {
                      return searchPageController.filteredList.isEmpty
                          ? const Center(
                              child: Text('Items Not Available !'),
                            )
                          : ExpansionTile(
                              dense: false,
                              tilePadding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              title: Row(
                                children: [
                                  Text(
                                    searchPageController.filteredList[index]
                                        ['itemname']!,
                                    style: AppTextStyle
                                        .foodCategoryMenuItemNameAndprice,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '= ${searchPageController.filteredList[index]['itemprice']!} \u{20B9}',
                                    style: AppTextStyle
                                        .foodCategoryMenuItemNameAndprice,
                                  ),
                                ],
                              ),
                              subtitle: Row(
                                children: [
                                  Text(searchPageController.filteredList[index]
                                      ['addonitemname']!),
                                  const SizedBox(width: 5),
                                  Text(
                                      '=  +${searchPageController.filteredList[index]['addonitemprice']!.toString()} \u{20B9}'),
                                ],
                              ),
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.loose,
                                      child: Text(searchPageController
                                          .filteredList[index]['description']!),
                                    ),
                                  ],
                                )
                              ],
                            );
                    },
                  ),
                ),
                const SizedBox(height: 15.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
