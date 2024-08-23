import 'package:car_mechanic/widgets/app_bar.dart';
import 'package:car_mechanic/widgets/bottom_nav.dart';
import 'package:car_mechanic/widgets/square_image_card.dart';
import 'package:flutter/material.dart';

class WorkShopScreen extends StatefulWidget {
  const WorkShopScreen({super.key});

  @override
  State<WorkShopScreen> createState() => _WorkShopScreenState();
}

class _WorkShopScreenState extends State<WorkShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(Icons.settings),
        title: "Work Shop",
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.0, // Adjust width as needed
                  child: SquareImageCard(
                    imageUrl:
                        'https://t3.ftcdn.net/jpg/04/36/86/92/360_F_436869295_sTez1v0ME4HrHyhHwkq3BNDJSc1AXLBG.jpg',
                    title: 'Auto King Workshop',
                    city: "London",
                    isTitleBold: false, // Set to false for normal text
                  ),
                ),
                SizedBox(
                  width: 150.0, // Adjust width as needed
                  child: SquareImageCard(
                    imageUrl:
                        'https://t3.ftcdn.net/jpg/04/35/89/26/360_F_435892680_6r3bwoH0puBT3jRjNdQWxOnCCG2GhSne.jpg',
                    title: 'Auto King Workshop',
                    city: "London",
                    isTitleBold: false, // Set to false for normal text
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.0, // Adjust width as needed
                  child: SquareImageCard(
                    imageUrl:
                        'https://t3.ftcdn.net/jpg/04/36/86/92/360_F_436869295_sTez1v0ME4HrHyhHwkq3BNDJSc1AXLBG.jpg',
                    title: 'Auto King Workshop',
                    city: "London",
                    isTitleBold: false, // Set to false for normal text
                  ),
                ),
                SizedBox(
                  width: 150.0, // Adjust width as needed
                  child: SquareImageCard(
                    imageUrl:
                        'https://t3.ftcdn.net/jpg/04/35/89/26/360_F_435892680_6r3bwoH0puBT3jRjNdQWxOnCCG2GhSne.jpg',
                    title: 'Auto King Workshop',
                    city: "London",
                    isTitleBold: false, // Set to false for normal text
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.0, // Adjust width as needed
                  child: SquareImageCard(
                    imageUrl:
                        'https://t3.ftcdn.net/jpg/04/36/86/92/360_F_436869295_sTez1v0ME4HrHyhHwkq3BNDJSc1AXLBG.jpg',
                    title: 'Auto King Workshop',
                    city: "London",
                    isTitleBold: false, // Set to false for normal text
                  ),
                ),
                SizedBox(
                  width: 150.0, // Adjust width as needed
                  child: SquareImageCard(
                    imageUrl:
                        'https://t3.ftcdn.net/jpg/04/35/89/26/360_F_435892680_6r3bwoH0puBT3jRjNdQWxOnCCG2GhSne.jpg',
                    title: 'Auto King Workshop',
                    city: "London",
                    isTitleBold: false, // Set to false for normal text
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.0, // Adjust width as needed
                  child: SquareImageCard(
                    imageUrl:
                        'https://t3.ftcdn.net/jpg/04/36/86/92/360_F_436869295_sTez1v0ME4HrHyhHwkq3BNDJSc1AXLBG.jpg',
                    title: 'Auto King Workshop',
                    city: "London",
                    isTitleBold: false, // Set to false for normal text
                  ),
                ),
                SizedBox(
                  width: 150.0, // Adjust width as needed
                  child: SquareImageCard(
                    imageUrl:
                        'https://t3.ftcdn.net/jpg/04/35/89/26/360_F_435892680_6r3bwoH0puBT3jRjNdQWxOnCCG2GhSne.jpg',
                    title: 'Auto King Workshop',
                    city: "London",
                    isTitleBold: false, // Set to false for normal text
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
