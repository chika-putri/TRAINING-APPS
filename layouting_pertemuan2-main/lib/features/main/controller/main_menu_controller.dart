// Mengimpor paket GetX untuk state management, dependency injection, dan navigasi.
import 'package:get/get.dart';

// Mengimpor screen yang digunakan dalam aplikasi. Screen ini akan ditampilkan di BottomNavigationBar.
import '../../store copy/store_screen.dart';  // Mengimpor Store1Screen dari direktori tertentu
import '../../store/store_screen.dart';       // Mengimpor StoreScreen dari direktori tertentu

// Mendefinisikan kelas controller bernama MainMenuController, yang merupakan turunan dari GetxController.
// Controller ini berfungsi untuk mengelola state dan logika dari bagian MainMenu aplikasi.
class MainMenuController extends GetxController {
  
  // Variabel `currentIndex` bertipe `RxInt` (int yang reaktif) untuk menyimpan indeks halaman saat ini.
  // `.obs` membuat variabel ini menjadi reaktif, sehingga perubahan nilai akan langsung ter-update di UI.
  var currentIndex = 0.obs;

  // Mendefinisikan daftar (list) halaman yang akan digunakan dalam BottomNavigationBar.
  // Halaman ini berupa widget yang akan ditampilkan saat pengguna memilih item navigasi tertentu.
  final List pages = [
    const StoreScreen(),   // Halaman pertama yang ditampilkan di BottomNavigationBar.
    const Store1Screen(),  // Halaman kedua yang ditampilkan di BottomNavigationBar.
  ];

  // Fungsi untuk mengubah halaman berdasarkan indeks.
  // Fungsi ini akan mengganti nilai `currentIndex` dengan indeks yang dipilih,
  // sehingga UI akan ter-update secara otomatis ke halaman yang baru.
  void changePage(int index) {
    currentIndex.value = index;
  }
}
