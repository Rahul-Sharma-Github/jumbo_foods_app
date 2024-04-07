import 'package:get/get.dart';

import '../../../features/users_panel/search/presentation/pages/search_page.dart';

// Nested pages for FoodOffersPage
final List<GetPage> foodOffersNestedPages = [
  GetPage(name: '/search', page: () => const SearchPage()),

  // Add more nested pages as needed
];
