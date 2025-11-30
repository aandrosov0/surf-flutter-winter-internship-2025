// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FruitState _$FruitStateFromJson(Map<String, dynamic> json) => _FruitState(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  family: json['family'] as String? ?? '',
  order: json['order'] as String? ?? '',
  genus: json['genus'] as String? ?? '',
  favorite: json['favorite'] as bool? ?? false,
  nutritions: json['nutritions'] == null
      ? const NutritionsState()
      : NutritionsState.fromJson(json['nutritions'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FruitStateToJson(_FruitState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'family': instance.family,
      'order': instance.order,
      'genus': instance.genus,
      'favorite': instance.favorite,
      'nutritions': instance.nutritions,
    };
