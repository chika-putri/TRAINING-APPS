// Mengimpor paket GetX yang menyediakan GetPage untuk pengaturan rute dan navigasi.
import 'package:get/get.dart';

// Mengimpor layar yang akan digunakan dalam pengaturan rute.
// Setiap layar akan dipetakan ke nama rute tertentu.
import 'package:layouting_pertemuan2/features/main/main_menu_screen.dart';
import 'package:layouting_pertemuan2/features/store/store_screen.dart';
import 'package:layouting_pertemuan2/features/welcome/welcome_screen.dart';

// Mendefinisikan kelas `RouteApp`, yang berfungsi sebagai pengelola rute di aplikasi.
class RouteApp {
  
  // Menentukan rute awal (home) aplikasi sebagai string yang merujuk ke path '/'.
  static String initial = '/';
  
  // Menentukan string rute untuk `MainMenuScreen`, dengan path '/mainmenu'.
  static String mainmenu = '/mainmenu';
  
  // Menentukan string rute untuk `StoreScreen`, dengan path '/store'.
  static String store = '/store';

  // Mendefinisikan daftar rute GetX yang dipetakan ke setiap layar dalam aplikasi.
  // `routes` adalah daftar `GetPage`, yang memetakan nama rute dengan widget layar terkait.
  static List<GetPage> routes = [
    // Mendefinisikan rute awal aplikasi yang akan menampilkan `WelcomeScreen`.
    GetPage(name: initial, page: () => const WelcomeScreen()),
    
    // Mendefinisikan rute untuk `MainMenuScreen`, yang dipetakan ke path '/mainmenu'.
    GetPage(name: mainmenu, page: () => const MainMenuScreen()),
    
    // Mendefinisikan rute untuk `StoreScreen`, yang dipetakan ke path '/store'.
    GetPage(name: store, page: () => const StoreScreen()),
  ];
}
