import 'package:car_mechanic/widgets/app_bar.dart';
import 'package:car_mechanic/widgets/bottom_nav.dart';
import 'package:car_mechanic/widgets/app_color.dart';
import 'package:car_mechanic/widgets/square_image_card.dart';
import 'package:car_mechanic/widgets/takaful.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Icon(Icons.settings),
        title: "Home",
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 170,
              width: double.infinity,
              child: Stack(
                children: [
                  AnotherCarousel(
                    images: const [
                      NetworkImage(
                          "https://t3.ftcdn.net/jpg/04/36/86/92/360_F_436869295_sTez1v0ME4HrHyhHwkq3BNDJSc1AXLBG.jpg"),
                      NetworkImage(
                          "https://t3.ftcdn.net/jpg/04/35/89/26/360_F_435892680_6r3bwoH0puBT3jRjNdQWxOnCCG2GhSne.jpg"),
                    ],
                  ),
                  Positioned(
                    // Position the text container for headings
                    top: 10.0, // Adjust top padding
                    left: 10.0, // Adjust left padding
                    right: 10.0, // Adjust right padding (optional)
                    child: Container(
                      // Container for better styling and alignment
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text left
                        children: [
                          Text(
                            'Main Heading Text',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold, // Make heading bold
                              color: AppColors.primaryColor,
                            ),
                          ),
                          SizedBox(
                              height: 5.0), // Add some spacing between headings
                          Text(
                            'Sub-Heading Text',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: AppColors.textColor1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text left

                        children: [
                          Text(
                            "Popular Workshop",
                            textAlign: TextAlign.left, // Explicitly set to left
                          ),
                          SizedBox(height: 5.0),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 150.0, // Adjust width as needed
                                    child: SquareImageCard(
                                      imageUrl:
                                          'https://t3.ftcdn.net/jpg/04/36/86/92/360_F_436869295_sTez1v0ME4HrHyhHwkq3BNDJSc1AXLBG.jpg',
                                      title: 'Auto King Workshop',
                                      city: "London",
                                      isTitleBold:
                                          false, // Set to false for normal text
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150.0, // Adjust width as needed
                                    child: SquareImageCard(
                                      imageUrl:
                                          'https://t3.ftcdn.net/jpg/04/35/89/26/360_F_435892680_6r3bwoH0puBT3jRjNdQWxOnCCG2GhSne.jpg',
                                      title: 'Auto King Workshop',
                                      city: "London",
                                      isTitleBold:
                                          false, // Set to false for normal text
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150.0, // Adjust width as needed
                                    child: SquareImageCard(
                                      imageUrl:
                                          'https://t3.ftcdn.net/jpg/04/36/86/92/360_F_436869295_sTez1v0ME4HrHyhHwkq3BNDJSc1AXLBG.jpg',
                                      title: 'Auto King Workshop',
                                      city: "London",
                                      isTitleBold:
                                          false, // Set to false for normal text
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text left

                        children: [
                          Text(
                            "Auto Takaful Plan",
                            textAlign: TextAlign.left, // Explicitly set to left
                          ),
                          SizedBox(height: 5.0),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 150.0, // Adjust width as needed
                                    child: takafulCard(
                                      imageUrl:
                                          'https://blogs.autoflipz.com/wp-content/uploads/2021/05/Car-Insurance.png',
                                      title: 'Cashless Repairs',
                                      city: "140 SAR",
                                      buttonText: "ADD TO CART",
                                      onButtonPressed: () {
                                        // Handle button press action
                                        print('Button pressed!');
                                      },
                                      isTitleBold:
                                          false, // Set to false for normal text
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150.0, // Adjust width as needed
                                    child: takafulCard(
                                      imageUrl:
                                          'https://www.shutterstock.com/image-photo/male-hands-car-protection-concept-260nw-1669859779.jpg',
                                      title: 'Cashless Repairs',
                                      city: "140 SAR",
                                      buttonText: "ADD TO CART",
                                      onButtonPressed: () {
                                        // Handle button press action
                                        print('Button pressed!');
                                      },
                                      isTitleBold:
                                          false, // Set to false for normal text
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
