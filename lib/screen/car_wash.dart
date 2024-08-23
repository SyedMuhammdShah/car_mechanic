import 'package:car_mechanic/widgets/app_bar.dart';
import 'package:car_mechanic/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class CarWashScreen extends StatefulWidget {
  const CarWashScreen({super.key});

  @override
  State<CarWashScreen> createState() => _CarWashScreenState();
}

class _CarWashScreenState extends State<CarWashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(Icons.settings),
        title: "Car Wash",
      ),
      body: const Center(
        child: Text("Coming Soon Car Wash Screen"),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
