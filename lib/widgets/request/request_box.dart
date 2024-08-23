import 'package:car_mechanic/widgets/app_color.dart';
import 'package:car_mechanic/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class RequestContainer extends StatelessWidget {
  final String imageUrl;
  final String buttonText;
  final VoidCallback? onPressed;

  RequestContainer({
    required this.imageUrl,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 180,
            height: 100,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 10),
          CustomElevatedButton(
            name: buttonText,
            backgroundColor: AppColors.primaryColor,
            onPressed: onPressed,
            textColor: AppColors.textColor,
          )
        ],
      ),
    );
  }
}
