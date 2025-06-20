// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_restaurant_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateRestaurantRequest _$UpdateRestaurantRequestFromJson(
  Map<String, dynamic> json,
) => UpdateRestaurantRequest(
  name: json['name'] as String?,
  description: json['description'] as String?,
  phone: json['phone'] as String?,
  rating: (json['rating'] as num?)?.toDouble(),
  ratingCount: (json['ratingCount'] as num?)?.toInt(),
  deliveryCost: (json['deliveryCost'] as num?)?.toDouble(),
  freeDelivery: json['freeDelivery'] as bool?,
  minOrderAmount: (json['minOrderAmount'] as num?)?.toDouble(),
);

Map<String, dynamic> _$UpdateRestaurantRequestToJson(
  UpdateRestaurantRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'phone': instance.phone,
  'rating': instance.rating,
  'ratingCount': instance.ratingCount,
  'deliveryCost': instance.deliveryCost,
  'freeDelivery': instance.freeDelivery,
  'minOrderAmount': instance.minOrderAmount,
};
