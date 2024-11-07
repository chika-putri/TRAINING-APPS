// Mengimpor paket Flutter untuk membangun antarmuka pengguna.
import 'package:flutter/material.dart';

// Mengimpor paket GetX untuk navigasi dan pengelolaan state.
import 'package:get/get.dart';

// Mengimpor `route_utils` untuk menggunakan pengaturan rute aplikasi.
import 'package:layouting_pertemuan2/core/utils/route_utils.dart';

// Mengimpor path gambar dari file constants `images.dart`.
import '../../core/constants/images.dart';

// Mengimpor teks yang disimpan sebagai konstanta dari `string.dart`.
import '../../core/constants/string.dart';

// Mengimpor `CustomButton`, sebuah widget kustom untuk membuat tombol.
import '../../core/global_component/custom_button.dart';

// Mendefinisikan kelas `WelcomeScreen` sebagai layar pembuka aplikasi.
// Kelas ini adalah `StatelessWidget`, karena tidak menyimpan state.
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mengembalikan widget `Scaffold` sebagai dasar layout halaman.
    return Scaffold(
      // Menggunakan `Stack` untuk menumpuk elemen-elemen layar, seperti background dan konten.
      body: Stack(
        children: [
          // Latar belakang gambar yang menempati seluruh layar.
          Positioned.fill(
            child: Image.asset(
              Images.welcomeBg, // Memanggil path gambar background dari file `images.dart`.
              fit: BoxFit.cover, // Menyesuaikan gambar agar memenuhi seluruh layar.
            ),
          ),
          // Kolom yang menumpuk elemen-elemen utama dalam layout.
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // Mengatur elemen di tengah vertikal.
            children: [
              // Teks selamat datang utama di layar.
              const Text(
                StringText.welcomeToTheApp, // Teks diambil dari file `string.dart`.
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10), // Jarak antar teks utama dan teks kedua.
              // Teks kedua yang berada di bawah teks utama.
              const Text(
                StringText.exploreTheWorldOfPosible, // Teks diambil dari file `string.dart`.
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40), // Jarak antara teks kedua dan baris tombol.
              // Baris yang berisi dua tombol kustom (Login dan Sign Up).
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0), // Padding kiri dan kanan.
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Menyusun tombol di kiri dan kanan.
                  children: [
                    // Tombol Login kustom.
                    CustomButton(
                      text: StringText.Login, // Teks tombol diambil dari file `string.dart`.
                      backgroundColor: Colors.transparent,
                      textColor: Colors.white,
                      width: 140,
                      height: 50,
                      borderRadius: 30,
                      borderColor: Colors.white, // Border tombol berwarna putih.
                      onPressed: () {
                        print('Login Button Pressed'); // Menampilkan pesan ketika tombol ditekan.
                        Get.offNamed(RouteApp.mainmenu); // Navigasi ke layar utama menggunakan GetX.
                      },
                    ),
                    // Tombol Sign Up kustom.
                    CustomButton(
                      text: 'Sign Up', // Teks tombol.
                      backgroundColor: Colors.white, // Latar belakang putih untuk kontras.
                      textColor: Colors.black, // Teks berwarna hitam.
                      width: 140,
                      height: 50,
                      borderRadius: 30,
                      onPressed: () {
                        print('Sign Up Button Pressed'); // Menampilkan pesan ketika tombol ditekan.
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
