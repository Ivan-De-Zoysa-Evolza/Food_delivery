import 'package:food_delivery_app/domain/entity/food/update_food_request_entity/update_food_request_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_food_request_model.g.dart';

@JsonSerializable()
class UpdateFoodRequest extends UpdateFoodRequestEntity {
  const UpdateFoodRequest({
    super.name,
    super.description,
    super.basePrice,
    super.rating,
    super.ratingCount,
    super.prepTime,
    super.calories,
  });

  factory UpdateFoodRequest.fromJson(Map<String, dynamic> json) => _$UpdateFoodRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateFoodRequestToJson(this);
}