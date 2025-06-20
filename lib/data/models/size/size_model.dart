import 'package:food_delivery_app/domain/entity/sizeEntity/size_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'size_model.g.dart';

@JsonSerializable()
class SizeModel extends SizeEntity {
  const SizeModel({
    required super.name,
    required super.price,
  });

  factory SizeModel.fromJson(Map<String, dynamic> json) =>
      _$SizeModelFromJson(json);

  Map<String, dynamic> toJson() => _$SizeModelToJson(this);
}