import 'package:food_delivery_app/domain/entity/restaurant/restaurant_stats_entity/restaurant_stats_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant_stats_model.g.dart';

@JsonSerializable()
class RestaurantStatsModel extends RestaurantStatsEntity {
  const RestaurantStatsModel({
    required super.foodCount,
    required super.minPrice,
    required super.maxPrice,
    required super.avgPrice,
    required super.totalRatings,
    required super.avgRating,
    required super.categoryBreakdown,
  });

  factory RestaurantStatsModel.fromJson(Map<String, dynamic> json) => _$RestaurantStatsModelFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantStatsModelToJson(this);
}
