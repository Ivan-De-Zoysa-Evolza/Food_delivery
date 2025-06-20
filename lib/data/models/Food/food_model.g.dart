// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => FoodModel(
  restaurantId: json['restaurantId'] as String?,
  name: json['name'] as String,
  description: json['description'] as String?,
  basePrice: (json['basePrice'] as num).toDouble(),
  sized:
      (json['sized'] as List<dynamic>?)
          ?.map((e) => SizeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  category: json['category'] as String?,
  ingredients:
      (json['ingredients'] as List<dynamic>?)?.map((e) => e as String).toList(),
  images: json['images'] as String,
  isVegetarian: json['isVegetarian'] as bool?,
  isVegen: json['isVegen'] as bool?,
  spice: json['spice'] as String?,
  prepTime: (json['prepTime'] as num?)?.toInt(),
  calories: (json['calories'] as num?)?.toInt(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  rating: (json['rating'] as num?)?.toDouble(),
  ratingCount: (json['ratingCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$FoodModelToJson(FoodModel instance) => <String, dynamic>{
  'restaurantId': instance.restaurantId,
  'name': instance.name,
  'description': instance.description,
  'basePrice': instance.basePrice,
  'sized': instance.sized,
  'category': instance.category,
  'ingredients': instance.ingredients,
  'images': instance.images,
  'isVegetarian': instance.isVegetarian,
  'isVegen': instance.isVegen,
  'spice': instance.spice,
  'prepTime': instance.prepTime,
  'calories': instance.calories,
  'tags': instance.tags,
  'rating': instance.rating,
  'ratingCount': instance.ratingCount,
};
