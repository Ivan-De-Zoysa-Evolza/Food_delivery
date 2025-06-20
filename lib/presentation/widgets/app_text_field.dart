import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_text.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final Icon? sufixIcon;
  final Icon? prefixIcon;
  final FormFieldValidator? validaor;
  final TextEditingController? controller;
  const AppTextField({super.key, required this.hintText, this.sufixIcon, this.controller, this.validaor, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validaor,
      style: AppText.inputStyle,
      decoration: InputDecoration(
        suffixIcon: sufixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: AppText.hintStyle,
        fillColor: AppColors.lightGrey,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
           borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}