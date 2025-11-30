// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Nutrition _$NutritionFromJson(Map<String, dynamic> json) => _Nutrition(
  calories: (json['calories'] as num?)?.toInt() ?? 0,
  fat: (json['fat'] as num?)?.toDouble() ?? 0,
  sugar: (json['sugar'] as num?)?.toDouble() ?? 0,
  carbohydrates: (json['carbohydrates'] as num?)?.toDouble() ?? 0,
  protein: (json['protein'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$NutritionToJson(_Nutrition instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'fat': instance.fat,
      'sugar': instance.sugar,
      'carbohydrates': instance.carbohydrates,
      'protein': instance.protein,
    };
