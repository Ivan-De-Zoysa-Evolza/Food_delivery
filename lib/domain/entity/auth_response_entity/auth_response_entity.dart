import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/data/models/user_model/user_model.dart';
import 'package:json_annotation/json_annotation.dart' show JsonKey;

import '../../../data/models/user_model/user_entity_converter.dart';
import '../user/user_entity.dart';

class AuthResponseEntity extends Equatable {
  final String token;
  @JsonKey(name: 'user')
  @UserEntityConverter()
  final UserEntity user;

  const AuthResponseEntity({required this.token, required this.user});

  @override
  // List<Object?> get props => throw UnimplementedError();
  @override
  List<Object?> get props {
    return [token, user];
  }
}
