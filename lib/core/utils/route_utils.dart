import 'package:get/get.dart';
import 'package:layouting_pertemuan2/features/main/main_menu_screen.dart';
import 'package:layouting_pertemuan2/features/store/store_screen.dart';
import 'package:layouting_pertemuan2/features/welcome/welcome_screen.dart';

class RouteApp {
  static String initial = '/';
  static String mainmenu = '/mainmenu';
  static String store = '/store';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const WelcomeScreen()),
    GetPage(name: mainmenu, page: () => const MainMenuScreen()),
    GetPage(name: store, page: () => const StoreScreen()),
   
  ];


}
