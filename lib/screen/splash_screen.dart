import 'package:car_mechanic/screen/auth/login_screen.dart';
import 'package:car_mechanic/screen/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate to login screen after a delay (e.g., 2 seconds)
    Future.delayed(Duration(seconds: 3), () {
      Get.to(WelcomeScreen());
    });

    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 247, 202, 23), // Set background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/splash.png', // Replace with your image asset path
              width: 300, // Adjust the width as needed
              height: 500, // Adjust the height as needed
            ),
          ],
        ),
      ),
    );
  }
}
