import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition.g.dart';
part 'nutrition.freezed.dart';

@freezed
abstract class Nutritions with _$Nutritions {
  const factory Nutritions({
    @Default(0) int calories,
    @Default(0) double fat,
    @Default(0) double sugar,
    @Default(0) double carbohydrates,
    @Default(0) double protein,
  }) = _Nutrition;

  factory Nutritions.fromJson(Map<String, Object?> json) => _$NutritionsFromJson(json);
}
