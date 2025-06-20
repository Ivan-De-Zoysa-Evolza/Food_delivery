// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_food_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateFoodRequest _$UpdateFoodRequestFromJson(Map<String, dynamic> json) =>
    UpdateFoodRequest(
      name: json['name'] as String?,
      description: json['description'] as String?,
      basePrice: (json['basePrice'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      ratingCount: (json['ratingCount'] as num?)?.toInt(),
      prepTime: (json['prepTime'] as num?)?.toInt(),
      calories: (json['calories'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UpdateFoodRequestToJson(UpdateFoodRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'basePrice': instance.basePrice,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
      'prepTime': instance.prepTime,
      'calories': instance.calories,
    };
