// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedResponseModel<T> _$PaginatedResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => PaginatedResponseModel<T>(
  data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
  totalItems: (json['totalItems'] as num).toInt(),
  hasNext: json['hasNext'] as bool,
  hasPrev: json['hasPrev'] as bool,
);

Map<String, dynamic> _$PaginatedResponseModelToJson<T>(
  PaginatedResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': instance.data.map(toJsonT).toList(),
  'page': instance.page,
  'limit': instance.limit,
  'totalPages': instance.totalPages,
  'totalItems': instance.totalItems,
  'hasNext': instance.hasNext,
  'hasPrev': instance.hasPrev,
};
