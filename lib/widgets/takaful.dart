import 'package:car_mechanic/widgets/app_color.dart';
import 'package:flutter/material.dart';

class takafulCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String city;
  final String buttonText;
  final VoidCallback onButtonPressed;
  final bool isTitleBold;

  const takafulCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.city,
    required this.buttonText,
    required this.onButtonPressed,
    this.isTitleBold = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
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
                    color: AppColors.textColor,
                    fontWeight:
                        isTitleBold ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                SizedBox(height: 5),
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
              ],
            ),
          ),
          // Button section
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.primaryColor,
            child: TextButton(
              onPressed: onButtonPressed,
              child: Text(
                buttonText,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
