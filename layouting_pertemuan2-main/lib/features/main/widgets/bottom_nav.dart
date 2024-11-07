import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/main_menu_controller.dart';

class BottomNavBarWidget extends StatelessWidget {
  final MainMenuController controller = Get.find<MainMenuController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: controller.changePage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Feed',
          ),
        ],
        selectedItemColor: Colors.blue, // Warna untuk item aktif
        unselectedItemColor: Colors.grey, // Warna untuk item tidak aktif
      ),
    );
  }
}
