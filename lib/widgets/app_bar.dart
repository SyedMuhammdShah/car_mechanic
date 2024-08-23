import 'package:car_mechanic/widgets/app_color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? trailing;
  final String? title;
  final Color? titleColor;
  final double height;

  CustomAppBar({
    this.leading,
    this.trailing,
    this.title,
    this.titleColor,
    this.height = kToolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor, // Customize background color as needed
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: SizedBox(
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              alignment: Alignment.centerLeft,
              child: leading ??
                  SizedBox(), // Display leading widget or empty SizedBox
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: title != null
                    ? Text(
                        title!,
                        style: TextStyle(
                          color: titleColor ?? Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : null,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              alignment: Alignment.centerRight,
              child: trailing ??
                  SizedBox(), // Display trailing widget or empty SizedBox
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
