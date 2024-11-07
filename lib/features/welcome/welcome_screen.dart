import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:layouting_pertemuan2/core/utils/route_utils.dart';
import '../../core/constants/images.dart';
import '../../core/constants/string.dart';
import '../../core/global_component/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              Images.welcomeBg, // Ganti dengan path image asset kamu
              fit: BoxFit.cover,
            ),
          ),
          // Elemen Bertumpuk
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text1
              const Text(
                StringText.welcomeToTheApp,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              // Text2
              const Text(
                StringText.exploreTheWorldOfPosible,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              // Row dengan dua CustomButton
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // CustomButton1
                    CustomButton(
                      text: StringText.Login,
                      backgroundColor: Colors.transparent,
                      textColor: Colors.white,
                      width: 140,
                      height: 50,
                      borderRadius: 30,
                      borderColor: Colors.white,
                      onPressed: () {
                        print('Login Button Pressed');
                        Get.offNamed(RouteApp.mainmenu);
                      },
                    ),
                    // CustomButton2
                    CustomButton(
                      text: 'Sign Up',
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      width: 140,
                      height: 50,
                      borderRadius: 30,
                      onPressed: () {
                        print('Sign Up Button Pressed');
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
