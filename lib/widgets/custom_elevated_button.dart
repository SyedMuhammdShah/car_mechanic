import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String name;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final Color? textColor; // New property for text color

  const CustomElevatedButton({
    Key? key,
    required this.name,
    this.onPressed,
    this.backgroundColor,
    this.width,
    this.height,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: Size(width ?? double.infinity, height ?? 36.0),
        ),
        child: Text(
          name,
          style: TextStyle(color: textColor), // Set text color here
        ),
      ),
    );
  }
}
