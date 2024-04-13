import 'package:get/get.dart';
import 'package:jumbo_foods_app/app/core/constants/assets_path/assets_path.dart';

class HomePageController extends GetxController {
  // Carousel Slider

  // List of Images
  List<String> imageList = [
    AssetsPaths.sliderImage_1,
    AssetsPaths.sliderImage_2,
    AssetsPaths.sliderImage_3,
  ];

  // List<Map> of Food Category Name with Images
  List<Map<String, String>> foodCategoryList = [
    {
      'name': 'Burger',
      'image': AssetsPaths.burger,
    },
    {
      'name': 'Chinese',
      'image': AssetsPaths.chinese,
    },
    {
      'name': 'Coolers',
      'image': AssetsPaths.coolers,
    },
    {
      'name': 'Deserts',
      'image': AssetsPaths.deserts,
    },
    {
      'name': 'Dips',
      'image': AssetsPaths.dips,
    },
    {
      'name': 'Fries',
      'image': AssetsPaths.fries,
    },
    {
      'name': 'Hot Baverages',
      'image': AssetsPaths.hotBaverages,
    },
    {
      'name': 'Jumbo Special',
      'image': AssetsPaths.jumboSpecial,
    },
    {
      'name': 'Jums',
      'image': AssetsPaths.jums,
    },
    {
      'name': 'Maggi',
      'image': AssetsPaths.maggi,
    },
    {
      'name': 'Meals',
      'image': AssetsPaths.meals,
    },
    {
      'name': 'Pastas',
      'image': AssetsPaths.pastas,
    },
    {
      'name': 'Pizza 7-inch',
      'image': AssetsPaths.pizza7inch,
    },
    {
      'name': 'Pizza 10-inch',
      'image': AssetsPaths.pizza10inch,
    },
    {
      'name': 'Rice',
      'image': AssetsPaths.rice,
    },
    {
      'name': 'Salad',
      'image': AssetsPaths.salad,
    },
    {
      'name': 'Shakes & Baverages',
      'image': AssetsPaths.shakesAndBaverages,
    },
    {
      'name': 'Toasts',
      'image': AssetsPaths.toasts,
    },
    {
      'name': 'Wraps',
      'image': AssetsPaths.wraps,
    },
  ];
}
