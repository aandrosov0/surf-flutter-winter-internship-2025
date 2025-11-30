import 'dart:async';
import 'dart:convert';

import 'package:app/data/exceptions/data_layer_exception.dart';
import 'package:collection/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/fruit.dart';
import 'fruits_repository.dart';
import 'package:http/http.dart' as http;

class FruitsRepositoryImpl implements FruitsRepository {
  static const _apiUrl = 'https://fruityvice.com/api';
  static const _favoritesKey = 'FRUIT_FAVORITES';

  final SharedPreferences _prefs;

  List<Fruit>? cachedFruits;

  FruitsRepositoryImpl(SharedPreferences sharedPreferences)
    : _prefs = sharedPreferences;

  @override
  Future<List<Fruit>> getAllFruits([bool refresh = false]) async {
    if (refresh == false && cachedFruits != null) {
      return cachedFruits!;
    }

    final url = Uri.parse('$_apiUrl/fruit/all');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Iterable iterable = jsonDecode(response.body);
      cachedFruits = iterable.map((e) => Fruit.fromJson(e)).toList();
      return cachedFruits!;
    }

    throw DataLayerException(
      'Response with status code "${response.statusCode}" isn\'t successful!',
    );
  }

  @override
  Future<List<Fruit>> getFavorites([bool refresh = false]) async {
    if (cachedFruits == null || refresh == true) {
      await getAllFruits();
    }

    final favoritesStr = _prefs.getStringList(_favoritesKey)?.toSet() ?? {};
    final favorites = favoritesStr.map(int.parse).toSet();

    return cachedFruits?.where((e) => favorites.contains(e.id)).toList() ?? [];
  }

  @override
  Future<void> addFavorite(int id) async {
    final favoritesStr = _prefs.getStringList(_favoritesKey)?.toSet() ?? {};
    favoritesStr.add('$id');
    _prefs.setStringList(_favoritesKey, favoritesStr.toList());
  }

  @override
  Future<void> removeFavorite(int id) async {
    final favoritesStr = _prefs.getStringList(_favoritesKey)?.toSet() ?? {};
    favoritesStr.remove('$id');
    _prefs.setStringList(_favoritesKey, favoritesStr.toList());
  }

  @override
  Future<Fruit?> getById(int id) async {
    final fruits = await getAllFruits();
    return fruits.firstWhereOrNull((e) => e.id == id);
  }
}
