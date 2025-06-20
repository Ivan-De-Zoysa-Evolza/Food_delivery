// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_food_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateFoodRequest _$CreateFoodRequestFromJson(
  Map<String, dynamic> json,
) => CreateFoodRequest(
  restaurantId: json['restaurantId'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  basePrice: (json['basePrice'] as num).toDouble(),
  sizes:
      (json['sizes'] as List<dynamic>?)
          ?.map((e) => SizeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  category: json['category'] as String,
  ingredients:
      (json['ingredients'] as List<dynamic>).map((e) => e as String).toList(),
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  isVegetarian: json['isVegetarian'] as bool,
  isVegan: json['isVegan'] as bool,
  spice: json['spice'] as String,
  prepTime: (json['prepTime'] as num).toInt(),
  calories: (json['calories'] as num).toInt(),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  rating: (json['rating'] as num).toDouble(),
  ratingCount: (json['ratingCount'] as num).toInt(),
);

Map<String, dynamic> _$CreateFoodRequestToJson(CreateFoodRequest instance) =>
    <String, dynamic>{
      'restaurantId': instance.restaurantId,
      'name': instance.name,
      'description': instance.description,
      'basePrice': instance.basePrice,
      'sizes': instance.sizes,
      'category': instance.category,
      'ingredients': instance.ingredients,
      'images': instance.images,
      'isVegetarian': instance.isVegetarian,
      'isVegan': instance.isVegan,
      'spice': instance.spice,
      'prepTime': instance.prepTime,
      'calories': instance.calories,
      'tags': instance.tags,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
    };
