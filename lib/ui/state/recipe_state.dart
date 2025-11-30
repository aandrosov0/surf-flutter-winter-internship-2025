import 'package:app/data/models/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'fruit_state.dart';

part 'recipe_state.freezed.dart';

part 'recipe_state.g.dart';

@freezed
abstract class RecipeState with _$RecipeState {
  const factory RecipeState({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String description,
    @Default([]) List<FruitState> fruits,
    @Default(0) int calories,
    @Default(0) double fat,
    @Default(0) double carbohydrates,
    @Default(0) double sugar,
    @Default(0) double protein,
  }) = _RecipeState;

  factory RecipeState.fromJson(Map<String, dynamic> json) =>
      _$RecipeStateFromJson(json);
}

extension RecipeExtension on Recipe {
  RecipeState toState(List<FruitState> fruits) {
    final nutritions = fruits.map((e) => e.nutritions);
    return RecipeState(
      id: id,
      name: name,
      description: description,
      fruits: fruits,
      calories: nutritions.map((e) => e.calories).reduce((v, e) => v + e),
      fat: nutritions.map((e) => e.fat).reduce((v, e) => v + e),
      carbohydrates: nutritions
          .map((e) => e.carbohydrates)
          .reduce((v, e) => v + e),
      sugar: nutritions.map((e) => e.sugar).reduce((v, e) => v + e),
      protein: nutritions.map((e) => e.protein).reduce((v, e) => v + e)
    );
  }
}
