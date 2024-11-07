// Mengimpor paket Flutter yang digunakan untuk membangun UI aplikasi.
import 'package:flutter/material.dart';

// Mengimpor paket GetX yang menyediakan fitur GetMaterialApp untuk navigasi dan manajemen aplikasi.
import 'package:get/get.dart';

// Mengimpor utils `route_utils`, yang berisi konfigurasi rute navigasi.
import '../utils/route_utils.dart';

// Mendefinisikan kelas `MainApp` sebagai widget utama aplikasi.
// `MainApp` merupakan `StatelessWidget`, sehingga tidak menyimpan state.
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengembalikan `GetMaterialApp`, yang merupakan pengganti `MaterialApp` pada Flutter.
    // GetMaterialApp mempermudah pengelolaan rute dan state management dengan GetX.
    return GetMaterialApp(
      // Menentukan rute awal yang akan ditampilkan saat aplikasi pertama kali dibuka.
      // `initialRoute` diambil dari `RouteApp.initial`, yang terdefinisi dalam `route_utils`.
      initialRoute: RouteApp.initial,
      
      // Menyediakan daftar semua rute aplikasi yang sudah didefinisikan.
      // `getPages` diisi dengan daftar rute yang terdefinisi di `RouteApp.routes`.
      getPages: RouteApp.routes,
    );
  }
}
