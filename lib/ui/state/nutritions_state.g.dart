// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutritions_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NutritionState _$NutritionStateFromJson(Map<String, dynamic> json) =>
    _NutritionState(
      calories: (json['calories'] as num?)?.toInt() ?? 0,
      fat: (json['fat'] as num?)?.toDouble() ?? 0,
      sugar: (json['sugar'] as num?)?.toDouble() ?? 0,
      carbohydrates: (json['carbohydrates'] as num?)?.toDouble() ?? 0,
      protein: (json['protein'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$NutritionStateToJson(_NutritionState instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'fat': instance.fat,
      'sugar': instance.sugar,
      'carbohydrates': instance.carbohydrates,
      'protein': instance.protein,
    };
