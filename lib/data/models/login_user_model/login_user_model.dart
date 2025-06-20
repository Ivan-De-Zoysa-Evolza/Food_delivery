import 'package:food_delivery_app/domain/entity/login_user_entity/login_user_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_user_model.g.dart';

@JsonSerializable()
class LoginUserModel extends LoginUserEntity {
  const LoginUserModel({required super.email, required super.password});

   factory LoginUserModel.fromJson(Map<String, dynamic> json) => _$LoginUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginUserModelToJson(this);
}
