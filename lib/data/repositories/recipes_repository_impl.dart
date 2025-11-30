import 'dart:convert';

import 'package:app/data/models/recipe.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'recipes_repository.dart';

class RecipesRepositoryImpl implements RecipesRepository {
  static const _recipesKey = "RECIPES";

  final SharedPreferences _sharedPreferences;

  RecipesRepositoryImpl(SharedPreferences sharedPreferences)
    : _sharedPreferences = sharedPreferences;

  @override
  Future<List<Recipe>> getAll() async {
    final rows = _sharedPreferences.getStringList(_recipesKey) ?? [];
    final decodedJsons = rows.map((e) => jsonDecode(e));
    final recipes = decodedJsons.map((e) => Recipe.fromJson(e)).toList();

    return recipes;
  }

  @override
  Future<void> add(Recipe recipe) async {
    final recipes = await getAll();
    final newRecipe = recipe.copyWith(
      id: DateTime.now().millisecondsSinceEpoch,
    );
    recipes.add(newRecipe);
    await _save(recipes);
  }

  @override
  Future<void> remove(int id) async {
    final recipes = await getAll();
    recipes.removeWhere((e) => e.id == id);

    await _save(recipes);
  }

  Future<void> _save(List<Recipe> recipes) async {
    final jsons = recipes.map((e) => e.toJson());
    final rows = jsons.map((e) => jsonEncode(e)).toList();

    _sharedPreferences.setStringList(_recipesKey, rows);
  }
}
