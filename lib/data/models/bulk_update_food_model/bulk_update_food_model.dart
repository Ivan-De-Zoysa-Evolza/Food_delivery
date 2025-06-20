import 'package:food_delivery_app/domain/entity/food/bulk_update_food_entity/bulk_update_food_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bulk_update_food_model.g.dart';

@JsonSerializable()
class BulkUpdateAvailabilityRequest extends BulkUpdateAvailabilityRequestEntity {
  const BulkUpdateAvailabilityRequest({
    required super.foodIds,
    required super.available,
  });

  factory BulkUpdateAvailabilityRequest.fromJson(Map<String, dynamic> json) => _$BulkUpdateAvailabilityRequestFromJson(json);
  Map<String, dynamic> toJson() => _$BulkUpdateAvailabilityRequestToJson(this);
}