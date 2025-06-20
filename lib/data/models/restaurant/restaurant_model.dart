import 'package:food_delivery_app/domain/entity/restaurant/restaurant_entity/restaurant_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant_model.g.dart';

@JsonSerializable()
class RestaurantModel extends RestaurantEntity {
  const RestaurantModel({
    required super.name,
    super.description,
    super.address,
    super.phone,
    super.email,
    super.openingTime,
    super.closingTime,
    required super.rating,
    super.ratingCount,
    required super.avgPrepareTime,
    super.deliveryCost,
    required super.freeDelivery,
    super.minOrderAmount,
    super.cuisine,
    required super.image,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantModelToJson(this);
}