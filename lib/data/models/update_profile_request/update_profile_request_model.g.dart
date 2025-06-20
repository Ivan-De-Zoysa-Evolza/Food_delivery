// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileRequest _$UpdateProfileRequestFromJson(
  Map<String, dynamic> json,
) => UpdateProfileRequest(
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
);

Map<String, dynamic> _$UpdateProfileRequestToJson(
  UpdateProfileRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'phone': instance.phone,
  'address': instance.address,
};
