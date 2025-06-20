import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_text.dart';

const Color primaryButtonColor = Color(0xFFF96D00); // Example orange
const Color onPrimaryButtonColor = Colors.white; // Text color on primary button
const Color loadingIndicatorColor = Colors.white; // Color of loading spinner

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? buttonColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle? textStyle;
  final bool isLoading; // New property for loading state
  final Widget? leadingIcon; // Optional leading icon
  final Widget? trailingIcon; // Optional trailing icon

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonColor = AppColors.yellow, // Default button color
    this.textColor = onPrimaryButtonColor, // Default text color
    this.height = 55.0, // Default height
    this.width = double.infinity, // Default to full width
    this.borderRadius = 15.0, // Default border radius
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0), // Default horizontal padding
    this.textStyle, // Custom text style
    this.isLoading = false, // Default to not loading
    this.leadingIcon,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed, // Disable button if loading
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.yellow,
          foregroundColor: textColor, // For ripple effect and text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
          elevation: 5, // A slight shadow, similar to your example
        ),
        child: isLoading
            ? SizedBox(
                width: 24, // Size of the loading indicator
                height: 24,
                child: CircularProgressIndicator(
                  color: loadingIndicatorColor,
                  strokeWidth: 2,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min, // Keep row tight to content if width is not infinity
                children: [
                  if (leadingIcon != null) ...[
                    leadingIcon!,
                    const SizedBox(width: 8), // Space between icon and text
                  ],
                  Text(
                    text,
                    style: AppText.buttonStyle
                  ),
                  if (trailingIcon != null) ...[
                    const SizedBox(width: 8), // Space between text and icon
                    trailingIcon!,
                  ],
                ],
              ),
      ),
    );
  }
}