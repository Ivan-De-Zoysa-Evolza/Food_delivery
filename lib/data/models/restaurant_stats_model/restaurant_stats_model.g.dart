// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantStatsModel _$RestaurantStatsModelFromJson(
  Map<String, dynamic> json,
) => RestaurantStatsModel(
  foodCount: (json['foodCount'] as num).toInt(),
  minPrice: (json['minPrice'] as num).toDouble(),
  maxPrice: (json['maxPrice'] as num).toDouble(),
  avgPrice: (json['avgPrice'] as num).toDouble(),
  totalRatings: (json['totalRatings'] as num).toInt(),
  avgRating: (json['avgRating'] as num).toDouble(),
  categoryBreakdown: Map<String, int>.from(json['categoryBreakdown'] as Map),
);

Map<String, dynamic> _$RestaurantStatsModelToJson(
  RestaurantStatsModel instance,
) => <String, dynamic>{
  'foodCount': instance.foodCount,
  'minPrice': instance.minPrice,
  'maxPrice': instance.maxPrice,
  'avgPrice': instance.avgPrice,
  'totalRatings': instance.totalRatings,
  'avgRating': instance.avgRating,
  'categoryBreakdown': instance.categoryBreakdown,
};
