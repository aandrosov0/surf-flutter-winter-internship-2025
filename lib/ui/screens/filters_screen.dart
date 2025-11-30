import 'package:app/ui/utils/fruits_filter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  FruitFilters? _fruitSorting;
  final Set<FruitFilters> _fruitFilters = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Фильтры')),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Stack(
          children: [
            _buildMainContent(),
            Align(
              alignment: Alignment.bottomCenter,
              child: _buildSubmitButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainContent() {
    final textTheme = TextTheme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Варианты сортировки', style: textTheme.titleMedium),
        _buildSortingsWidget(),
        SizedBox(height: 20),
        Text('Фильтры', style: textTheme.titleMedium),
        _buildFiltersWidget(),
      ],
    );
  }

  Widget _buildSortingsWidget() {
    final filters = {
      'По названию (A-Z)': FruitFilters.titleGrowth,
      'По названию (Z-A)': FruitFilters.titleDecrease,
      'По возрастанию калорий': FruitFilters.caloriesGrowth,
      'По убыванию калорий': FruitFilters.caloriesDecrease,
    };

    return Wrap(
      spacing: 4,
      children: filters.entries.map((entry) {
        return FilterChip(
          label: Text(entry.key),
          selected: _fruitSorting == entry.value,
          onSelected: (selected) {
            if (selected) {
              setState(() => _fruitSorting = entry.value);
            } else {
              setState(() => _fruitSorting = null);
            }
          },
        );
      }).toList(),
    );
  }

  Widget _buildFiltersWidget() {
    final filters = {
      'Завтрак': FruitFilters.breakfast,
      'Тренировка': FruitFilters.training,
      'Сытость': FruitFilters.satiety,
      'Перекус': FruitFilters.snack,
      'Диета': FruitFilters.diet,
    };

    return Wrap(
      spacing: 4,
      children: filters.entries.map((entry) {
        return FilterChip(
          label: Text(entry.key),
          selected: _fruitFilters.contains(entry.value),
          onSelected: (selected) {
            if (selected) {
              setState(() => _fruitFilters.add(entry.value));
            } else {
              setState(() => _fruitFilters.remove(entry.value));
            }
          },
        );
      }).toList(),
    );
  }

  Widget _buildSubmitButton() {
    final active = _fruitFilters.isNotEmpty || _fruitSorting != null;
    return ElevatedButton(
      onPressed: !active
          ? null
          : () {
              context.pop([..._fruitFilters, ?_fruitSorting]);
            },
      child: Text('Подтвердить'),
    );
  }
}
