import 'package:app/ui/state/fruit_state.dart';
import 'package:collection/collection.dart';

enum FruitFilters {
  titleGrowth,
  titleDecrease,
  caloriesGrowth,
  caloriesDecrease,
  breakfast,
  training,
  satiety,
  snack,
  diet,
}

abstract interface class FruitsFilter {
  Iterable<FruitState> apply(Iterable<FruitState> fruits);
}

class TitleGrowthFruitsFilter implements FruitsFilter {
  @override
  Iterable<FruitState> apply(Iterable<FruitState> fruits) {
    return fruits.sorted(_compareFruits);
  }

  int _compareFruits(FruitState fruit1, FruitState fruit2) {
    var name1 = fruit1.name;
    var name2 = fruit2.name;

    return compareNatural(name1, name2);
  }
}

class TitleDecreaseFruitFilter implements FruitsFilter {
  @override
  Iterable<FruitState> apply(Iterable<FruitState> fruits) {
    return TitleGrowthFruitsFilter().apply(fruits).toList().reversed;
  }
}

class CaloriesGrowthFruitFilter implements FruitsFilter {
  @override
  Iterable<FruitState> apply(Iterable<FruitState> fruits) {
    return fruits.sorted(_compareFruits);
  }

  int _compareFruits(FruitState fruit1, FruitState fruit2) {
    var calories1 = fruit1.nutritions.calories;
    var calories2 = fruit2.nutritions.calories;

    return calories1.compareTo(calories2);
  }
}

class CaloriesDecreaseFruitFilter implements FruitsFilter {
  @override
  Iterable<FruitState> apply(Iterable<FruitState> fruits) {
    return CaloriesGrowthFruitFilter().apply(fruits).toList().reversed;
  }
}

class BreakfastFruitsFilter implements FruitsFilter {
  @override
  Iterable<FruitState> apply(Iterable<FruitState> fruits) {
    return fruits.where(_doesFruitObeyRules);
  }

  bool _doesFruitObeyRules(FruitState fruit) {
    final nutritions = fruit.nutritions;
    return (nutritions.calories >= 40 && nutritions.calories <= 80) &&
        nutritions.carbohydrates >= 10 &&
        nutritions.sugar <= 12 &&
        nutritions.fat <= 0.5;
  }
}

class TrainingFruitsFilter implements FruitsFilter {
  @override
  Iterable<FruitState> apply(Iterable<FruitState> fruits) {
    return fruits.where(_doesFruitObeyRules);
  }

  bool _doesFruitObeyRules(FruitState fruit) {
    final nutritions = fruit.nutritions;
    return (nutritions.calories >= 50 && nutritions.calories <= 100) &&
        nutritions.carbohydrates >= 12 &&
        nutritions.fat <= 0.3;
  }
}

class SatietyFruitsFilter implements FruitsFilter {
  @override
  Iterable<FruitState> apply(Iterable<FruitState> fruits) {
    return fruits.where(_doesFruitObeyRules);
  }

  bool _doesFruitObeyRules(FruitState fruit) {
    final nutritions = fruit.nutritions;
    return (nutritions.calories >= 50 && nutritions.calories <= 90) &&
        (nutritions.carbohydrates >= 10 && nutritions.carbohydrates <= 15) &&
        nutritions.sugar <= 10 &&
        nutritions.protein >= 0.5;
  }
}

class SnackFruitsFilter implements FruitsFilter {
  @override
  Iterable<FruitState> apply(Iterable<FruitState> fruits) {
    return fruits.where(_doesFruitObeyRules);
  }

  bool _doesFruitObeyRules(FruitState fruit) {
    final nutritions = fruit.nutritions;
    return nutritions.calories <= 50 &&
        nutritions.sugar <= 7 &&
        nutritions.fat <= 0.4;
  }
}

class DietFruitFilter implements FruitsFilter {
  @override
  Iterable<FruitState> apply(Iterable<FruitState> fruits) {
    return fruits.where(_doesFruitObeyRules);
  }

  bool _doesFruitObeyRules(FruitState fruit) {
    final nutritions = fruit.nutritions;
    return nutritions.calories <= 40 &&
        nutritions.sugar <= 6 &&
        nutritions.fat <= 0.3;
  }
}

extension FruitFiltersExtension on List<FruitFilters> {
  List<FruitsFilter> convertToFruitsFilter() {
    return map(
      (filter) => switch (filter) {
        FruitFilters.titleGrowth => TitleGrowthFruitsFilter(),
        FruitFilters.titleDecrease => TitleDecreaseFruitFilter(),
        FruitFilters.caloriesGrowth => CaloriesGrowthFruitFilter(),
        FruitFilters.caloriesDecrease => CaloriesDecreaseFruitFilter(),
        FruitFilters.breakfast => BreakfastFruitsFilter(),
        FruitFilters.training => TrainingFruitsFilter(),
        FruitFilters.satiety => SatietyFruitsFilter(),
        FruitFilters.snack => SnackFruitsFilter(),
        FruitFilters.diet => DietFruitFilter(),
      },
    ).toList();
  }
}
