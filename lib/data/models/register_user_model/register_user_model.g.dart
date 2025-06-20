// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterUserModel _$RegisterUserModelFromJson(Map<String, dynamic> json) =>
    RegisterUserModel(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$RegisterUserModelToJson(RegisterUserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'address': instance.address,
    };
