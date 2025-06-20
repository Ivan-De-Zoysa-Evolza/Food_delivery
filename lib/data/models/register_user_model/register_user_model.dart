import 'package:food_delivery_app/domain/entity/register_user_entity/register_user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_user_model.g.dart';

@JsonSerializable()
class RegisterUserModel extends RegisterUserEntity {

  const RegisterUserModel({
    required super.name,
    required super.email,
    required super.password,
    required super.phone,
    required super.address,
  });

  factory RegisterUserModel.fromJson(Map<String, dynamic> json) => _$RegisterUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterUserModelToJson(this);
}
