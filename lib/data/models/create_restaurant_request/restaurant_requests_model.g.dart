// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_requests_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRestaurantRequest _$CreateRestaurantRequestFromJson(
  Map<String, dynamic> json,
) => CreateRestaurantRequest(
  name: json['name'] as String,
  description: json['description'] as String,
  address: json['address'] as String,
  phone: json['phone'] as String,
  email: json['email'] as String,
  openingTime: json['openingTime'] as String,
  closingTime: json['closingTime'] as String,
  rating: (json['rating'] as num).toDouble(),
  ratingCount: (json['ratingCount'] as num).toInt(),
  avgPrepareTime: (json['avgPrepareTime'] as num).toInt(),
  deliveryCost: (json['deliveryCost'] as num).toDouble(),
  freeDelivery: json['freeDelivery'] as bool,
  minOrderAmount: (json['minOrderAmount'] as num).toDouble(),
  cuisine: (json['cuisine'] as List<dynamic>).map((e) => e as String).toList(),
  image: json['image'] as String?,
);

Map<String, dynamic> _$CreateRestaurantRequestToJson(
  CreateRestaurantRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'address': instance.address,
  'phone': instance.phone,
  'email': instance.email,
  'openingTime': instance.openingTime,
  'closingTime': instance.closingTime,
  'rating': instance.rating,
  'ratingCount': instance.ratingCount,
  'avgPrepareTime': instance.avgPrepareTime,
  'deliveryCost': instance.deliveryCost,
  'freeDelivery': instance.freeDelivery,
  'minOrderAmount': instance.minOrderAmount,
  'cuisine': instance.cuisine,
  'image': instance.image,
};
