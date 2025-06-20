import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_text.dart';

void mySnackBar(context, color, text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text,style: AppText.buttonStyle,),
      backgroundColor: color,
      duration: Duration(seconds: 2),
    ),
  );
}