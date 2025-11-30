import 'dart:collection';

import 'package:app/data/models/recipe.dart';
import 'package:app/data/repositories/fruits_repository.dart';
import 'package:app/data/repositories/recipes_repository.dart';
import 'package:app/ui/result.dart';
import 'package:app/ui/state/fruit_state.dart';
import 'package:flutter/cupertino.dart';

class NewRecipeViewModel extends ChangeNotifier {
  late final FruitsRepository _fruitsRepository;
  late final RecipesRepository _recipesRepository;

  NewRecipeViewModel({
    required FruitsRepository fruitsRepository,
    required RecipesRepository recipesRepository,
  }) {
    _fruitsRepository = fruitsRepository;
    _recipesRepository = recipesRepository;

    load();
  }

  Result _status = Ok(null);

  Result get status => _status;

  var _favoriteFruits = <FruitState>[];

  get favorites => UnmodifiableListView(_favoriteFruits);

  final _checkedFruits = <FruitState>{};

  get checkedFruits => UnmodifiableSetView(_checkedFruits);

  Future<void> load() async {
    _status = Progress();
    notifyListeners();

    final favorites = await _fruitsRepository.getFavorites();
    _favoriteFruits = favorites.map((e) => e.toState()).toList();

    _status = Ok(null);
    notifyListeners();
  }

  Future<void> checkFruit(FruitState fruit) async {
    _status = Progress();
    notifyListeners();

    if (_checkedFruits.contains(fruit)) {
      _checkedFruits.remove(fruit);
    } else {
      _checkedFruits.add(fruit);
    }

    _status = Ok(null);
    notifyListeners();
  }

  Future<void> save(String name, String description) async {
    _status = Progress();
    notifyListeners();

    final fruits = _checkedFruits.map((e) => e.id).toSet();
    final recipe = Recipe(
      name: name.trim(),
      description: description.trim(),
      fruits: fruits,
    );
    await _recipesRepository.add(recipe);

    _status = Ok(null);
    notifyListeners();
  }
}
