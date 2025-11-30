import 'package:app/data/repositories/fruits_repository.dart';
import 'package:app/ui/result.dart';
import 'package:app/ui/state/fruit_state.dart';
import 'package:flutter/material.dart';

class FruitDetailsViewModel extends ChangeNotifier {
  final int fruitId;

  late final FruitsRepository _fruitsRepository;

  Result _status = Progress();
  Result get status => _status;

  FruitDetailsViewModel({
    required this.fruitId,
    required FruitsRepository
    fruitsRepository}) {
    _fruitsRepository = fruitsRepository;
    load();
  }

  void load() async {
    try {
      _status = Progress();
      notifyListeners();

      _status = Ok(await _loadFruit());
    } on Exception catch (exception) {
      _status = Failure(exception);
    }
    notifyListeners();
  }

  void addFavorite(int id) async {
    try {
      await _fruitsRepository.addFavorite(id);
      _status = Ok(await _loadFruit());
    } on Exception catch (exception) {
      _status = Failure(exception);
    }
    notifyListeners();
  }

  void removeFavorite(int id) async {
    try {
      await _fruitsRepository.removeFavorite(id);
      _status = Ok(await _loadFruit());
    } on Exception catch (exception) {
      _status = Failure(exception);
    }
    notifyListeners();
  }

  Future<FruitState> _loadFruit() async {
    final favorites = await _fruitsRepository.getFavorites();
    final foundFruit = await _fruitsRepository.getById(fruitId);
    return foundFruit!.toState().copyWith(favorite: favorites.contains(foundFruit));
  }
}