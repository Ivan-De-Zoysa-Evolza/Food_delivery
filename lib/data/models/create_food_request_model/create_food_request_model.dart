import 'package:food_delivery_app/data/models/size/size_model.dart';
import 'package:food_delivery_app/domain/entity/food/create_food_request_entity/create_food_request_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_food_request_model.g.dart';

@JsonSerializable()
class CreateFoodRequest extends CreateFoodRequestEntity {
  const CreateFoodRequest({
    required super.restaurantId,
    required super.name,
    required super.description,
    required super.basePrice,
    super.sizes,
    required super.category,
    required super.ingredients,
    required super.images,
    required super.isVegetarian,
    required super.isVegan,
    required super.spice,
    required super.prepTime,
    required super.calories,
    required super.tags,
    required super.rating,
    required super.ratingCount,
  });

  factory CreateFoodRequest.fromJson(Map<String, dynamic> json) => _$CreateFoodRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreateFoodRequestToJson(this);
}