// Mengimpor paket Flutter untuk membangun UI aplikasi.
import 'package:flutter/material.dart';

// Mengimpor paket GetX untuk state management, dependency injection, dan navigasi.
import 'package:get/get.dart';

// Mengimpor widget `BottomNavBarWidget` yang digunakan sebagai BottomNavigationBar di layar ini.
import 'package:layouting_pertemuan2/features/main/widgets/bottom_nav.dart';

// Mengimpor `MainMenuController`, controller yang mengelola logika dan state dari MainMenuScreen.
import 'controller/main_menu_controller.dart';

// Mendefinisikan widget layar utama aplikasi yang disebut `MainMenuScreen`.
// Kelas ini adalah StatelessWidget, artinya tidak menyimpan state secara langsung di dalamnya.
class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Inisialisasi `MainMenuController` menggunakan `Get.put`, sehingga dapat diakses di seluruh widget ini.
    final MainMenuController controller = Get.put(MainMenuController());

    return Scaffold(
      // Menggunakan `Obx` untuk membangun tampilan secara reaktif.
      // `Obx` akan otomatis memperbarui `body` ketika `currentIndex` berubah.
      body: Obx(() => controller.pages[controller.currentIndex.value]),

      // Menambahkan `BottomNavBarWidget` sebagai BottomNavigationBar di layar ini.
      // BottomNavBarWidget digunakan untuk mengelola navigasi antara halaman.
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
