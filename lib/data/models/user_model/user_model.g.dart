// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: json['id'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String,
  address: json['address'] as String,
  role: json['role'] as String,
  created: json['created'] as String,
  updated: json['updated'] as String,
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'name': instance.name,
  'phone': instance.phone,
  'address': instance.address,
  'role': instance.role,
  'created': instance.created,
  'updated': instance.updated,
};
