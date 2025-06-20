import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/data/models/size/size_model.dart';

class FoodEntity extends Equatable{
  final String? restaurantId;
  final String name;
  final String? description;
  final double basePrice;
  final List<SizeModel>? sized;
  final String? category;
  final List<String>? ingredients;
  final String images;
  final bool? isVegetarian;
  final bool? isVegen;
  final String? spice;
  final int? prepTime;
  final int? calories;
  final List<String>? tags;
  final double? rating;
  final int? ratingCount;

  const FoodEntity({this.restaurantId, required this.name, this.description, required this.basePrice, this.sized, this.category, this.ingredients, required this.images, this.isVegetarian, this.isVegen, this.spice, this.prepTime, this.calories, this.tags, this.rating, this.ratingCount});
  
  @override
  List<Object?> get props {
    return [
      restaurantId,
      name,
      description,
      basePrice,
      sized,
      category,
      ingredients,
      images,
      isVegetarian,
      isVegen,
      spice,
      prepTime,
      calories,
      tags,
      rating,
      ratingCount,
    ];
  }
  
}