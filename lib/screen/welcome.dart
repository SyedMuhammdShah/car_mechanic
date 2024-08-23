import 'package:car_mechanic/screen/auth/login_screen.dart';
import 'package:car_mechanic/widgets/app_color.dart';
import 'package:car_mechanic/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 120),
          child: Column(
            children: [
              Image.asset('images/welcome.png'),
              SizedBox(
                height: 30,
              ),
              Text("Online Car Mechanics and Insurance Services"),
              SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                onPressed: () {
                  Get.to(LoginScreen());
                },
                name: "Lets Start",
                backgroundColor: AppColors.textColor,
                textColor: AppColors.textColor1,
                height: 40,
                width: 120,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
