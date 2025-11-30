// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeState _$RecipeStateFromJson(Map<String, dynamic> json) => _RecipeState(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? "",
  description: json['description'] as String? ?? "",
  fruits:
      (json['fruits'] as List<dynamic>?)
          ?.map((e) => FruitState.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  calories: (json['calories'] as num?)?.toInt() ?? 0,
  fat: (json['fat'] as num?)?.toDouble() ?? 0,
  carbohydrates: (json['carbohydrates'] as num?)?.toDouble() ?? 0,
  sugar: (json['sugar'] as num?)?.toDouble() ?? 0,
  protein: (json['protein'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$RecipeStateToJson(_RecipeState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'fruits': instance.fruits,
      'calories': instance.calories,
      'fat': instance.fat,
      'carbohydrates': instance.carbohydrates,
      'sugar': instance.sugar,
      'protein': instance.protein,
    };
