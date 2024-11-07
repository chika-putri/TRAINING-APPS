import 'package:get/get.dart';

import '../../store copy/store_screen.dart';
import '../../store/store_screen.dart';

class MainMenuController extends GetxController {
  var currentIndex = 0.obs;

  // List of pages for BottomNavigationBar
  final List pages = [
    const StoreScreen(),
    const Store1Screen(),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
