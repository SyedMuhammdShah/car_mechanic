import 'package:car_mechanic/screen/request_form.dart';
import 'package:car_mechanic/widgets/app_bar.dart';
import 'package:car_mechanic/widgets/bottom_nav.dart';
import 'package:car_mechanic/widgets/request/request_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(Icons.settings),
        title: "Request",
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            RequestContainer(
              imageUrl: 'images/request1.png',
              buttonText: "Request Service",
              onPressed: () {
                Get.to(RequestFormScreen());
              },
            ),
            SizedBox(
              height: 10,
            ),
            RequestContainer(
              imageUrl: 'images/request2.png',
              buttonText: "Request Mobile Workshop",
              onPressed: () {},
            ),
            SizedBox(
              height: 10,
            ),
            RequestContainer(
              imageUrl: 'images/request3.png',
              buttonText: "Request Car Lifting",
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
