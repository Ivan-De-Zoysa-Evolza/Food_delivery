import 'package:food_delivery_app/domain/entity/user/user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {

  const UserModel({
    required super.id,
    required super.email,
    required super.name,
    required super.phone,
    required super.address,
    required super.role,
    required super.created,
    required super.updated,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
