import 'package:app/ui/result.dart';
import 'package:app/ui/state/fruit_state.dart';
import 'package:app/ui/view_models/favorites_view_model.dart';
import 'package:app/ui/widgets/failure_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/fruit_list_item.dart';

class FavoritesScreen extends StatelessWidget {
  final FavoritesViewModel _favoritesViewModel;

  const FavoritesScreen({
    super.key,
    required FavoritesViewModel favoritesViewModel,
  }) : _favoritesViewModel = favoritesViewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Избранное')),
      body: ListenableBuilder(
        listenable: _favoritesViewModel,
        builder: (_, _) {
          return switch (_favoritesViewModel.status) {
            Ok _ => _buildFruitList(context),
            Failure _ => _buildFailureWidget(),
            Progress _ => _buildLoadingWidget(),
          };
        },
      ),
    );
  }

  Widget _buildFruitList(BuildContext context) {
    final fruits = (_favoritesViewModel.status as Ok<List<FruitState>>).value;

    if (fruits.isEmpty) {
      return Center(child: Text('Вы пока ничего не добавили в избранное'));
    }
    
    return ListView.builder(
      itemCount: fruits.length,
      itemBuilder: (_, index) {
        final fruit = fruits[index];
        return _buildFruitListItem(context, fruit);
      },
    );
  }

  Widget _buildFailureWidget() {
    return FailureWidget(onRetryPressed: _favoritesViewModel.load);
  }

  Widget _buildLoadingWidget() => Center(child: CircularProgressIndicator());

  Widget _buildFruitListItem(BuildContext context, FruitState fruit) {
    return FruitListItem(
      title: fruit.name,
      subtitle: fruit.family,
      favorite: fruit.favorite,
      onPressed: () => _onFruitItemPressed(context, fruit),
      onFavoritePressed: () => _onFavoriteButtonPressed(fruit),
    );
  }

  void _onFavoriteButtonPressed(FruitState fruit) {
    final id = fruit.id;

    if (fruit.favorite) {
      _favoritesViewModel.removeFavorite(id);
    } else {
      _favoritesViewModel.addFavorite(id);
    }
  }

  void _onFruitItemPressed(BuildContext context, FruitState fruit) async {
    final id = fruit.id;
    await context.push('/fruit/$id');
    _favoritesViewModel.load();
  }
}
