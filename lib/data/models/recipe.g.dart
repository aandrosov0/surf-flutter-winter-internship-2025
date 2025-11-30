// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Recipe _$RecipeFromJson(Map<String, dynamic> json) => _Recipe(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? "",
  description: json['description'] as String? ?? "",
  fruits:
      (json['fruits'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toSet() ??
      const {},
);

Map<String, dynamic> _$RecipeToJson(_Recipe instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'fruits': instance.fruits.toList(),
};
