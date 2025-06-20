import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_colors.dart';
class DrawerIcon extends StatelessWidget {
  const DrawerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset("assets/images/Icon.png"),
        ),
      ),
    );
  }
}