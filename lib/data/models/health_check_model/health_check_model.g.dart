// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_check_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthCheckModel _$HealthCheckModelFromJson(Map<String, dynamic> json) =>
    HealthCheckModel(
      status: json['status'] as String,
      message: json['message'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      details: json['details'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$HealthCheckModelToJson(HealthCheckModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'timestamp': instance.timestamp.toIso8601String(),
      'details': instance.details,
    };
