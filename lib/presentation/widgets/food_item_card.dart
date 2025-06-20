import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_text.dart';
import 'package:food_delivery_app/data/models/food/food_model.dart';

class FoodItemCard extends StatelessWidget {
  final FoodModel food;
  const FoodItemCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(15),
      ),
      width: 140,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                food.images,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food.name,
                  style: AppText.labelText.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Starting",
                      style: AppText.hintStyle.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text("LKR ${food.basePrice.toInt().toString()}",style: AppText.labelText.copyWith(fontSize: 12),)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
