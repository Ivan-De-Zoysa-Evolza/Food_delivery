import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/data/models/size/size_model.dart';

class CreateFoodRequestEntity extends Equatable {
  final String restaurantId;
  final String name;
  final String description;
  final double basePrice;
  final List<SizeModel>? sizes;
  final String category;
  final List<String> ingredients;
  final List<String> images;
  final bool isVegetarian;
  final bool isVegan;
  final String spice;
  final int prepTime;
  final int calories;
  final List<String> tags;
  final double rating;
  final int ratingCount;

  const CreateFoodRequestEntity({
    required this.restaurantId,
    required this.name,
    required this.description,
    required this.basePrice,
    this.sizes,
    required this.category,
    required this.ingredients,
    required this.images,
    required this.isVegetarian,
    required this.isVegan,
    required this.spice,
    required this.prepTime,
    required this.calories,
    required this.tags,
    required this.rating,
    required this.ratingCount,
  });

  @override
  List<Object?> get props {
    return [
      restaurantId,
      name,
      description,
      basePrice,
      sizes,
      category,
      ingredients,
      images,
      isVegetarian,
      isVegan,
      spice,
      prepTime,
      calories,
      tags,
      rating,
      ratingCount,
    ];
  }
}