import 'package:app/ui/state/nutritions_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/fruit.dart';

part 'fruit_state.freezed.dart';
part 'fruit_state.g.dart';

@freezed
abstract class FruitState with _$FruitState {
  const factory FruitState({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String family,
    @Default('') String order,
    @Default('') String genus,
    @Default(false) bool favorite,
    @Default(NutritionsState()) NutritionsState nutritions,
  }) = _FruitState;

  factory FruitState.fromJson(Map<String, dynamic> json) => _$FruitStateFromJson(json);
}

extension FruitExtension on Fruit {
  FruitState toState() => FruitState(
    id: id,
    name: name,
    family: family,
    order: order,
    genus: genus,
    nutritions: nutritions.toState(),
  );
}