import 'package:food_delivery_app/domain/entity/paginated_response_entity/paginated_response_entity.dart'; // Adjust this path if needed
import 'package:json_annotation/json_annotation.dart';

part 'paginated_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PaginatedResponseModel<T> extends PaginatedResponseEntity<T> {
  const PaginatedResponseModel({
    required super.data,
    required super.page,
    required super.limit,
    required super.totalPages,
    required super.totalItems,
    required super.hasNext,
    required super.hasPrev,
  });

  factory PaginatedResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedResponseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$PaginatedResponseModelToJson(this, toJsonT);
}