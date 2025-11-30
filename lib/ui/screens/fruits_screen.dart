import 'package:app/ui/utils/fruits_filter.dart';
import 'package:app/ui/view_models/fruits_view_model.dart';
import 'package:app/ui/widgets/fruit_list_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../result.dart';
import '../state/fruit_state.dart';
import '../widgets/failure_widget.dart';

class FruitsScreen extends StatefulWidget {
  final FruitsViewModel _fruitsViewModel;

  const FruitsScreen({super.key, required FruitsViewModel fruitsViewModel})
    : _fruitsViewModel = fruitsViewModel;

  @override
  State<FruitsScreen> createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {
  late final _fruitsViewModel = widget._fruitsViewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Фрукты'), actions: [_buildLeadingButton()]),
      body: ListenableBuilder(
        listenable: _fruitsViewModel,
        builder: (_, _) {
          final status = _fruitsViewModel.status;

          return switch (status) {
            Failure _ => _buildFailureWidget(),
            Progress _ => _buildLoadingWidget(),
            Ok _ => _buildFruitList(),
          };
        },
      ),
    );
  }

  Widget _buildFruitList() {
    final fruits = _fruitsViewModel.fruits;

    return ListView.builder(
      itemCount: fruits.length,
      itemBuilder: (_, index) {
        final fruit = fruits[index];
        return _buildFruitListItem(fruit);
      },
    );
  }

  Widget _buildLeadingButton() {
    return IconButton(
      onPressed: _onLeadingButtonPressed,
      icon: Icon(Icons.sort),
    );
  }

  Widget _buildFailureWidget() {
    return FailureWidget(
      onRetryPressed: () => _fruitsViewModel.load(refresh: true),
    );
  }

  Widget _buildLoadingWidget() => Center(child: CircularProgressIndicator());

  Widget _buildFruitListItem(FruitState fruit) {
    return FruitListItem(
      title: fruit.name,
      subtitle: fruit.family,
      favorite: fruit.favorite,
      onPressed: () => _onFruitItemPressed(fruit),
      onFavoritePressed: () => _onFavoriteButtonPressed(fruit),
    );
  }

  void _onFruitItemPressed(FruitState fruit) async {
    final id = fruit.id;
    await context.push('/fruit/$id');
    _fruitsViewModel.load();
  }

  void _onFavoriteButtonPressed(FruitState fruit) {
    if (fruit.favorite) {
      _fruitsViewModel.removeFavorite(fruit.id);
    } else {
      _fruitsViewModel.addFavorite(fruit.id);
    }
  }

  void _onLeadingButtonPressed() async {
    final result = (await context.push<List<FruitFilters>?>('/fruits/filters'));
    if (result == null) {
      return;
    }

    _fruitsViewModel.applyFilters(result.convertToFruitsFilter());
  }
}
