import 'package:car_mechanic/screen/car_wash.dart';
import 'package:car_mechanic/screen/home.dart';
import 'package:car_mechanic/screen/insurance.dart';
import 'package:car_mechanic/screen/request.dart';
import 'package:car_mechanic/screen/workshop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

class NavigationController extends GetxController {
  // Rx variable to manage current index state
  RxInt currentIndex = 0.obs;

  // Method to change current index
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: navigationController.currentIndex.value,
        onTap: (index) {
          navigationController.changeIndex(index);
          navigateToScreen(context, index);
        },
        type: BottomNavigationBarType.fixed,
        items: [
          _buildNavItem(Icons.home, 'Home'),
          _buildNavItem(Icons.tire_repair_sharp, 'Insurance'),
          _buildNavItem(Icons.add_box_rounded, 'Request'),
          _buildNavItem(Icons.car_repair_outlined, 'Workshop'),
          _buildNavItem(Icons.local_car_wash_rounded, 'Car Wash'),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }

  void navigateToScreen(BuildContext context, int index) {
    switch (index) {
      case 0:
        Get.to(() => HomeScreen());
        break;
      case 1:
        Get.to(() => InsuranceScreen());
        break;
      case 2:
        Get.to(() => RequestScreen());
        break;
      case 3:
        Get.to(() => WorkShopScreen());
        break;
      case 4:
        Get.to(() => CarWashScreen());
        break;
    }
  }
}
