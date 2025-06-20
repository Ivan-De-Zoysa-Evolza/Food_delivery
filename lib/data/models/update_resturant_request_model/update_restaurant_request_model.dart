import 'package:food_delivery_app/domain/entity/restaurant/update_restaurant_request_entity/update_restaurant_request_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_restaurant_request_model.g.dart';

@JsonSerializable()
class UpdateRestaurantRequest extends UpdateRestaurantRequestEntity {
  const UpdateRestaurantRequest({
    super.name,
    super.description,
    super.phone,
    super.rating,
    super.ratingCount,
    super.deliveryCost,
    super.freeDelivery,
    super.minOrderAmount,
  });

  factory UpdateRestaurantRequest.fromJson(Map<String, dynamic> json) => _$UpdateRestaurantRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateRestaurantRequestToJson(this);
}