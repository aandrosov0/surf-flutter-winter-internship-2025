import 'package:app/data/models/fruit.dart';

abstract interface class FruitsRepository {
  Future<List<Fruit>> getAllFruits([bool refresh]);
  Future<List<Fruit>> getFavorites([bool refresh]);
  Future<Fruit?> getById(int id);
  Future<void> addFavorite(int id);
  Future<void> removeFavorite(int id);
}