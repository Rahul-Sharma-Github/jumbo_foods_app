import 'package:get/get.dart';

class HomePageController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();

    // These methods will execute when this controller will registered and initialized
    //
  }

// Changing index value of IndexedStack Widget at HomePage

  // variable to store Index Value for IndexedStack Widget
  var indexOfIndexedStackWidget = 0.obs;

  // method to change value of indexOfIndexedStack variable on BottomNavigationBar each item Tap
  void changeIndex(int index) {
    indexOfIndexedStackWidget.value = index;
  }

//
}
