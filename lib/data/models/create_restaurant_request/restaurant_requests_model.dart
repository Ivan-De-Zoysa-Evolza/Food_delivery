import 'package:food_delivery_app/domain/entity/restaurant/create_restaurant_request/restaurant_requests_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant_requests_model.g.dart';

@JsonSerializable()
class CreateRestaurantRequest extends CreateRestaurantRequestEntity {
  const CreateRestaurantRequest({
    required super.name,
    required super.description,
    required super.address,
    required super.phone,
    required super.email,
    required super.openingTime,
    required super.closingTime,
    required super.rating,
    required super.ratingCount,
    required super.avgPrepareTime,
    required super.deliveryCost,
    required super.freeDelivery,
    required super.minOrderAmount,
    required super.cuisine,
    super.image,
  });

  factory CreateRestaurantRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRestaurantRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateRestaurantRequestToJson(this);
}