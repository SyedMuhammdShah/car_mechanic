import 'package:flutter/material.dart';

class SocialCustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String name;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final Color? textColor;
  final IconData? icon; // New property for social media icon

  const SocialCustomButton({
    Key? key,
    required this.name,
    this.onPressed,
    this.backgroundColor,
    this.width,
    this.height,
    this.textColor,
    this.icon, // Include the icon parameter in the constructor
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
          // minimumSize: Size(width ?? double.infinity, height ?? 36.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) // Display icon only if it's provided
              Icon(icon, color: textColor),
            SizedBox(
                width: icon != null
                    ? 8.0
                    : 0), // Add spacing between icon and text
            Text(
              name,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
