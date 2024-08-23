import 'package:car_mechanic/widgets/app_bar.dart';
import 'package:car_mechanic/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class InsuranceScreen extends StatefulWidget {
  const InsuranceScreen({super.key});

  @override
  State<InsuranceScreen> createState() => _InsuranceScreenState();
}

class _InsuranceScreenState extends State<InsuranceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(Icons.settings),
        title: "Car Insurance",
      ),
      body: Center(
        child: Text("Coming Soon Insurance Screen"),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
