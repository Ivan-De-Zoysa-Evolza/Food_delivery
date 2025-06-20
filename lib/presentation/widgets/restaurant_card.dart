import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_text.dart';
import 'package:food_delivery_app/data/models/restaurant/restaurant_model.dart';

class RestaurantCard extends StatelessWidget {
  final RestaurantModel restaurant;
  const RestaurantCard({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  restaurant.image,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
            ),
            SizedBox(height: 15),
            Text(restaurant.name,style: AppText.restHeading),
            Row(
              children: [
                Icon(Icons.star_border,color: AppColors.yellow,),
                Text(restaurant.rating.toString()),
                SizedBox(width: 50),
                Icon(Icons.delivery_dining,color: AppColors.yellow),
                Text(restaurant.freeDelivery.toString()),
                SizedBox(width: 50),
                Icon(Icons.access_time,color: AppColors.yellow),
                Text(restaurant.freeDelivery.toString())
              ],
            )
          ],
        ),
      ),
    );
  }
}