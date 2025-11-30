import 'package:app/data/models/recipe.dart';
import 'package:app/data/repositories/fruits_repository.dart';
import 'package:app/data/repositories/recipes_repository.dart';
import 'package:app/ui/result.dart';
import 'package:app/ui/state/fruit_state.dart';
import 'package:app/ui/state/recipe_state.dart';
import 'package:flutter/material.dart';

class RecipesViewModel extends ChangeNotifier {
  late final RecipesRepository _recipesRepository;
  late final FruitsRepository _fruitsRepository;

  RecipesViewModel({
    required RecipesRepository recipesRepository,
    required FruitsRepository fruitsRepository,
  }) {
    _recipesRepository = recipesRepository;
    _fruitsRepository = fruitsRepository;

    load();
  }

  Result _status = Ok(<Recipe>[]);

  Result get status => _status;

  Future<void> load() async {
    try {
      _status = Progress();
      notifyListeners();

      _status = Ok(await _loadRecipes());
      notifyListeners();
    } on Exception catch (exception) {
      _status = Failure(exception);
    }

    notifyListeners();
  }

  Future<void> removeRecipe(int id) async {
    try {
      _status = Progress();
      notifyListeners();

      await _recipesRepository.remove(id);
      _status = Ok(await _loadRecipes());
      notifyListeners();
    } on Exception catch (exception) {
      _status = Failure(exception);
    }

    notifyListeners();
  }

  Future<List<RecipeState>> _loadRecipes() async {
    final recipes = await _recipesRepository.getAll();
    final fruits = (await _fruitsRepository.getFavorites()).map(
          (e) => e.toState(),
    );

    final recipeState = recipes.map(
          (recipe) => recipe.toState(
        fruits.where((fruit) => recipe.fruits.contains(fruit.id)).toList(),
      ),
    ).toList();

    return recipeState;
  }
}
