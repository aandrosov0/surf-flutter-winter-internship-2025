import 'dart:collection';

import 'package:app/data/repositories/fruits_repository.dart';
import 'package:app/ui/result.dart';
import 'package:app/ui/state/fruit_state.dart';
import 'package:app/ui/utils/fruits_filter.dart';
import 'package:flutter/material.dart';

class FruitsViewModel extends ChangeNotifier {
  late final FruitsRepository _fruitsRepository;

  Result _status = Progress();

  Result get status => _status;

  List<FruitState> _fruits = [];

  List<FruitsFilter> _filters = [];

  get fruits => UnmodifiableListView(_fruits);

  FruitsViewModel({required FruitsRepository fruitsRepository}) {
    _fruitsRepository = fruitsRepository;

    load();
  }

  void load({bool refresh = false}) async {
    try {
      _status = Progress();
      notifyListeners();

      await _loadFruits(refresh);
      _status = Ok(null);
    } on Exception catch (exception) {
      _status = Failure(exception);
    }
    notifyListeners();
  }

  void addFavorite(int id) async {
    try {
      _fruitsRepository.addFavorite(id);
      _loadFruits();
    } on Exception catch (exception) {
      _status = Failure(exception);
    }
    notifyListeners();
  }

  void removeFavorite(int id) async {
    try {
      _fruitsRepository.removeFavorite(id);
      _loadFruits();
    } on Exception catch (exception) {
      _status = Failure(exception);
    }
    notifyListeners();
  }

  Future<void> applyFilters(List<FruitsFilter> filters) async {
    _filters = filters;
    await _loadFruits();
    notifyListeners();
  }

  Future<void> _loadFruits([bool refresh = false]) async {
    final networkFruits = await _fruitsRepository.getAllFruits(refresh);
    final favorites = await _fruitsRepository.getFavorites();

    _fruits = networkFruits
        .map((e) => e.toState().copyWith(favorite: favorites.contains(e)))
        .toList();

    for (var filter in _filters) {
      _fruits = filter.apply(_fruits).toList();
    }
  }
}
