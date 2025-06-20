import 'package:food_delivery_app/data/models/user_model/user_model.dart';
import 'package:food_delivery_app/domain/entity/auth_response_entity/auth_response_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import '../user_model/user_entity_converter.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel extends AuthResponseEntity {

  const AuthResponseModel({
    required super.token,
    // ignore: invalid_annotation_target
required super.user,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) => _$AuthResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuthResponseModelToJson(this);
}
