// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SizeModel _$SizeModelFromJson(Map<String, dynamic> json) => SizeModel(
  name: json['name'] as String?,
  price: (json['price'] as num?)?.toDouble(),
);

Map<String, dynamic> _$SizeModelToJson(SizeModel instance) => <String, dynamic>{
  'name': instance.name,
  'price': instance.price,
};
