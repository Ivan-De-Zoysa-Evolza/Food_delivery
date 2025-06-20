import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_text.dart';
import 'package:food_delivery_app/data/models/food/food_model.dart';
import 'package:food_delivery_app/data/models/restaurant/restaurant_model.dart';
import 'package:food_delivery_app/data/test/food_items.dart';
import 'package:food_delivery_app/data/test/restaurants.dart';
import 'package:food_delivery_app/presentation/widgets/app_drawer.dart';
import 'package:food_delivery_app/presentation/widgets/app_text_field.dart';
import 'package:food_delivery_app/presentation/widgets/drawer_icon.dart';
import 'package:food_delivery_app/presentation/widgets/food_item_card.dart';
import 'package:food_delivery_app/presentation/widgets/restaurant_card.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<FoodModel> _foodItems = FoodItems().foodItems;
  final List<RestaurantModel> _restaurants = Restaurants().allRestaurants;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ProfileScreen(),
      appBar: AppBar(
        leading: DrawerIcon(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(Icons.shopping_bag_outlined, color: AppColors.white),
            ),
          ),
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "DELIVER TO",
              style: AppText.hintStyle.copyWith(
                color: AppColors.yellow,
                fontSize: 15,
              ),
            ),
            Row(
              children: [
                Text(
                  "Evolza office",
                  style: AppText.hintStyle.copyWith(fontSize: 15),
                ),
                SizedBox(width: 20),
                Image.asset("assets/images/Polygon 1.png", width: 15),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Hey John,  ", style: AppText.dashHeading.copyWith(fontSize: 15)),
                  Text(
                    "Good Afternoon!",
                    style: AppText.labelText.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              AppTextField(
                hintText: "Search dished, resturant",
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: AppColors.inputColor,
                  size: 30,
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All Categories",style: AppText.dashHeading,),
                  Text("See All >",style: AppText.dashHeading.copyWith(fontSize: 15),)
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 195,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: _foodItems.length,
                  itemBuilder: (context, index) {
                  final foodItem = _foodItems[index];
                  return FoodItemCard(food: foodItem);
                },),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Open Restaurants",style: AppText.dashHeading),
                  Text("See All >",style: AppText.dashHeading.copyWith(fontSize: 15))
                ],
              ),
              SizedBox(
                height: 250,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.65,
                  ),
                  itemCount: _restaurants.length,
                  itemBuilder: (context, index) {
                  final restaurant = _restaurants[index];
                  return RestaurantCard(restaurant: restaurant);
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
