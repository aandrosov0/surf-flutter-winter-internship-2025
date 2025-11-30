import 'package:app/ui/result.dart';
import 'package:app/ui/state/fruit_state.dart';
import 'package:app/ui/view_models/fruit_details_view_model.dart';
import 'package:app/ui/widgets/failure_widget.dart';
import 'package:app/ui/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class FruitDetailsScreen extends StatelessWidget {
  final FruitDetailsViewModel _fruitDetailsViewModel;

  const FruitDetailsScreen({
    super.key,
    required FruitDetailsViewModel fruitDetailsViewModel,
  }) : _fruitDetailsViewModel = fruitDetailsViewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _fruitDetailsViewModel,
      builder: (_, _) =>
          Scaffold(appBar: _buildAppBar(), body: _buildBody(context)),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    final status = _fruitDetailsViewModel.status;

    final fruit = status is Ok<FruitState> ? status.value : null;
    return AppBar(
      title: Text(fruit?.name ?? ''),
      actions: [
        FavoriteButton(
          favorite: fruit?.favorite ?? false,
          onPressed: fruit == null ? null : _onFavoriteButtonPressed,
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    final status = _fruitDetailsViewModel.status;

    return switch (status) {
      Ok _ => _buildFruitInfo(context),
      Failure _ => _buildFailureWidget(),
      Progress _ => _buildLoadingWidget(),
    };
  }

  Widget _buildFruitInfo(BuildContext context) {
    final textTheme = TextTheme.of(context);

    final fruit = (_fruitDetailsViewModel.status as Ok<FruitState>).value;
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Семейство: ${fruit.family}'),
          Text('Орден: ${fruit.order}'),
          Text('Род: ${fruit.genus}'),
          SizedBox(height: 20),
          Text('Питательные свойства', style: textTheme.titleMedium),
          Text('Калории: ${fruit.nutritions.calories}'),
          Text('Жир: ${fruit.nutritions.fat}'),
          Text('Сахар: ${fruit.nutritions.sugar}'),
          Text('Углеводы: ${fruit.nutritions.carbohydrates}'),
          Text('Белок: ${fruit.nutritions.protein}'),
        ],
      ),
    );
  }

  Widget _buildFailureWidget() {
    return FailureWidget(
      onRetryPressed: _fruitDetailsViewModel.load,
    );
  }

  Widget _buildLoadingWidget() => Center(child: CircularProgressIndicator());

  void _onFavoriteButtonPressed() {
    final fruit = (_fruitDetailsViewModel.status as Ok<FruitState>).value;

    if (fruit.favorite) {
      _fruitDetailsViewModel.removeFavorite(fruit.id);
    } else {
      _fruitDetailsViewModel.addFavorite(fruit.id);
    }
  }
}
