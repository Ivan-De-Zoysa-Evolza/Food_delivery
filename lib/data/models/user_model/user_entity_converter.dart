import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entity/user/user_entity.dart';
import 'user_model.dart';

class UserEntityConverter implements JsonConverter<UserEntity, Map<String, dynamic>> {
  const UserEntityConverter();

  @override
  UserEntity fromJson(Map<String, dynamic> json) => UserModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(UserEntity object) => (object as UserModel).toJson();
}
