// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_update_food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkUpdateAvailabilityRequest _$BulkUpdateAvailabilityRequestFromJson(
  Map<String, dynamic> json,
) => BulkUpdateAvailabilityRequest(
  foodIds: (json['foodIds'] as List<dynamic>).map((e) => e as String).toList(),
  available: json['available'] as bool,
);

Map<String, dynamic> _$BulkUpdateAvailabilityRequestToJson(
  BulkUpdateAvailabilityRequest instance,
) => <String, dynamic>{
  'foodIds': instance.foodIds,
  'available': instance.available,
};
