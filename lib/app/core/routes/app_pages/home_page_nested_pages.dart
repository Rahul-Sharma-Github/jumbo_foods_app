import 'package:get/get.dart';

import '../../../features/users_panel/food_category/presentation/pages/food_category_page.dart';
import '../../../features/users_panel/search/presentation/pages/search_page.dart';

// Nested pages for HomePage
final List<GetPage> homePageNestedPages = [
  GetPage(name: '/food_category', page: () => const FoodCategoryPage()),
  GetPage(name: '/home_search', page: () => const SearchPage()),

  // Add more nested pages as needed
];
