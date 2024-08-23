import 'package:car_mechanic/screen/home.dart';
import 'package:car_mechanic/widgets/app_color.dart';
import 'package:car_mechanic/widgets/custom_elevated_button.dart';
import 'package:car_mechanic/widgets/custom_social_button.dart';
import 'package:car_mechanic/widgets/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 202, 23),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Log In",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                controller: _emailController,
                labelText: 'Email',
              ),
              SizedBox(height: 20.0),
              CustomTextField(
                controller: _passwordController,
                obscureText: true,
                labelText: "Password",
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Flexible(
                    child: SocialCustomButton(
                      onPressed: () {},
                      name: "Gmail",
                      textColor: AppColors.textColor1,
                      icon: Icons.mail,
                      backgroundColor: AppColors.gmColor,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Flexible(
                    child: SocialCustomButton(
                        // width: 100,
                        onPressed: () {},
                        name: "Facebook",
                        textColor: AppColors.textColor1,
                        icon: Icons.facebook,
                        backgroundColor: AppColors.fbColor),
                  )
                ],
              ),
              SizedBox(height: 10.0),
              CustomElevatedButton(
                onPressed: () {
                  Get.to(HomeScreen());
                },
                name: "Login",
                backgroundColor: AppColors.textColor1,
                textColor: AppColors.textColor,
                height: 40,
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t  have an account?",
                    style: TextStyle(color: Color.fromARGB(255, 13, 13, 13)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigate to forgot password screen
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
      body: Center(
        child: Text("User Details Screen"),
      ),
    );
  }
}

void main() {
  runApp(GetMaterialApp(
    home: LoginScreen(),
  ));
}
