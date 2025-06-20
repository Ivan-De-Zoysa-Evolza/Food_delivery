import 'package:food_delivery_app/domain/entity/api_response_entity/api_response_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true) // new parameter ?
class ApiResponseModel<T> extends ApiResponseEntity<T> {
  const ApiResponseModel({
    required super.success,
    super.message,
    super.data,
    super.error,
  });

  factory ApiResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiResponseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ApiResponseModelToJson(this, toJsonT);
}