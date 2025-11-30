import 'package:app/data/models/nutrition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fruit.g.dart';
part 'fruit.freezed.dart';

@freezed
abstract class Fruit with _$Fruit {
  const factory Fruit({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String family,
    @Default("") String order,
    @Default("") String genus,
    @Default(Nutritions()) Nutritions nutritions,
  }) = _Fruit;

  factory Fruit.fromJson(Map<String, Object?> json) => _$FruitFromJson(json);
}