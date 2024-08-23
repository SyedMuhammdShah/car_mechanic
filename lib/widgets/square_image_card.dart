import 'package:car_mechanic/widgets/app_color.dart';
import 'package:car_mechanic/widgets/app_color.dart';
import 'package:flutter/material.dart';

class SquareImageCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String city;
  final bool isTitleBold;

  const SquareImageCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.city,
    this.isTitleBold = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: AppColors.primaryColor,
      child: Column(
        children: [
          // Square image
          Image.network(
            imageUrl,
            height: 100.0, // Adjust image height as needed
            width: 150.0, // Ensures square image
            fit: BoxFit.cover, // Fills the container
          ),
          // Text section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Align text left
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: AppColors.textColor1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  city,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11.0,
                    color: AppColors.textColor,
                    fontWeight:
                        isTitleBold ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                // Optional: Add a subtitle or description below the title
              ],
            ),
          ),
        ],
      ),
    );
  }
}
