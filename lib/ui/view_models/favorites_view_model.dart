import 'package:app/data/repositories/fruits_repository.dart';
import 'package:app/ui/result.dart';
import 'package:app/ui/state/fruit_state.dart';
import 'package:flutter/material.dart';

class FavoritesViewModel extends ChangeNotifier {
  late final FruitsRepository _fruitsRepository;

  Result _status = Ok<List<FruitState>>([]);

  Result get status => _status;

  FavoritesViewModel({required FruitsRepository fruitsRepository}) {
    _fruitsRepository = fruitsRepository;
    load();
  }

  void load() async {
    try {
      _status = Progress();
      notifyListeners();

      final favorites = await _fruitsRepository.getFavorites();
      final favoritesState = favorites
          .map((e) => e.toState().copyWith(favorite: true))
          .toList();

      _status = Ok(favoritesState);
    } on Exception catch (exception) {
      _status = Failure(exception);
    }
    notifyListeners();
  }

  Future<void> addFavorite(int id) async {
    try {
      await _fruitsRepository.addFavorite(id);

      _status = Ok(await _loadFruits());
    } on Exception catch (exception) {
      _status = Failure(exception);
    }

    notifyListeners();
  }

  Future<void> removeFavorite(int id) async {
    try {
      await _fruitsRepository.removeFavorite(id);

      _status = Ok(await _loadFruits());
      notifyListeners();
    } on Exception catch (exception) {
      _status = Failure(exception);
    }
  }

  Future<List<FruitState>> _loadFruits() async {
    final favorites = await _fruitsRepository.getFavorites();
    return favorites.map((e) => e.toState().copyWith(favorite: true)).toList();
  }
}
