
import 'package:food_delivery_app/domain/entity/health_check_entity/health_check_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'health_check_model.g.dart';

@JsonSerializable()
class HealthCheckModel extends HealthCheckEntity {
  const HealthCheckModel({
    required super.status,
    required super.message,
    required super.timestamp,
    super.details,
  });

  factory HealthCheckModel.fromJson(Map<String, dynamic> json) =>
      _$HealthCheckModelFromJson(json);

  Map<String, dynamic> toJson() => _$HealthCheckModelToJson(this);
}