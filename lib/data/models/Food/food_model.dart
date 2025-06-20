import 'package:food_delivery_app/data/models/size/size_model.dart';
import 'package:food_delivery_app/domain/entity/food/food_entity/food_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food_model.g.dart';

@JsonSerializable()
class FoodModel extends FoodEntity {
  const FoodModel({
    super.restaurantId,
    required super.name,
    super.description,
    required super.basePrice,
    super.sized,
    super.category,
    super.ingredients,
    required super.images,
    super.isVegetarian,
    super.isVegen,
    super.spice,
    super.prepTime,
    super.calories,
    super.tags,
    super.rating,
    super.ratingCount,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);

  Map<String, dynamic> toJson() => _$FoodModelToJson(this);
}