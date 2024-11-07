import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:layouting_pertemuan2/features/main/widgets/bottom_nav.dart';
import 'controller/main_menu_controller.dart';


class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Inisialisasi MainMenuController
    final MainMenuController controller = Get.put(MainMenuController());

    return Scaffold(
      body: Obx(() => controller.pages[controller.currentIndex.value]),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
