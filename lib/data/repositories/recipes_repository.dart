import 'package:app/data/models/recipe.dart';

abstract interface class RecipesRepository {
  Future<List<Recipe>> getAll();
  Future<void> add(Recipe recipe);
  Future<void> remove(int id);
}