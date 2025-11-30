// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Fruit _$FruitFromJson(Map<String, dynamic> json) => _Fruit(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? "",
  family: json['family'] as String? ?? "",
  order: json['order'] as String? ?? "",
  genus: json['genus'] as String? ?? "",
  nutritions: json['nutritions'] == null
      ? const Nutritions()
      : Nutritions.fromJson(json['nutritions'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FruitToJson(_Fruit instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'family': instance.family,
  'order': instance.order,
  'genus': instance.genus,
  'nutritions': instance.nutritions,
};
