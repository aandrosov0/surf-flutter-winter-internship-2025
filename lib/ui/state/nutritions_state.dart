import 'package:app/data/models/nutrition.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutritions_state.g.dart';
part 'nutritions_state.freezed.dart';

@freezed
abstract class NutritionsState with _$NutritionsState {
  const factory NutritionsState({
    @Default(0) int calories,
    @Default(0) double fat,
    @Default(0) double sugar,
    @Default(0) double carbohydrates,
    @Default(0) double protein,
  }) = _NutritionState;

  factory NutritionsState.fromJson(Map<String, Object?> json) => _$NutritionsStateFromJson(json);
}

extension NutritionsExtension on Nutritions {
  NutritionsState toState() => NutritionsState(
    calories: calories,
    fat: fat,
    sugar: sugar,
    carbohydrates: carbohydrates,
    protein: protein
  );
}
