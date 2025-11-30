import 'package:app/ui/result.dart';
import 'package:app/ui/state/recipe_state.dart';
import 'package:app/ui/view_models/recipes_view_model.dart';
import 'package:app/ui/widgets/recipe_list_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/failure_widget.dart';

class RecipesScreen extends StatelessWidget {
  final RecipesViewModel _recipesViewModel;

  const RecipesScreen({super.key, required RecipesViewModel recipesViewModel})
    : _recipesViewModel = recipesViewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Рецепты')),
      body: _buildBody(context),
      floatingActionButton: _buildNewRecipeButton(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListenableBuilder(
      listenable: _recipesViewModel,
      builder: (_, _) {
        final status = _recipesViewModel.status;
        return switch (status) {
          Ok _ => _buildRecipesList(),
          Failure _ => _buildFailureWidget(),
          Progress _ => _buildLoadingWidget(),
        };
      },
    );
  }

  Widget _buildFailureWidget() {
    return FailureWidget(onRetryPressed: _recipesViewModel.load);
  }

  Widget _buildLoadingWidget() => Center(child: CircularProgressIndicator());

  Widget _buildRecipesList() {
    final recipes = (_recipesViewModel.status as Ok<List<RecipeState>>).value;

    if (recipes.isEmpty) {
      return Center(child: Text('Создайте свой первый рецепт'));
    }

    return ListView.builder(
      itemBuilder: (_, index) => _buildRecipeListItem(recipes[index]),
      itemCount: recipes.length,
    );
  }

  Widget _buildRecipeListItem(RecipeState recipe) {
    return RecipeListItem(
      title: recipe.name,
      description: recipe.description,
      fruits: recipe.fruits.map((e) => e.name),
      onDeletePressed: () => _recipesViewModel.removeRecipe(recipe.id),
      calories: recipe.calories,
      fat: recipe.fat,
      carbohydrates: recipe.carbohydrates,
      sugar: recipe.sugar,
      protein: recipe.protein,
    );
  }

  Widget _buildNewRecipeButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.push('/recipe/new'),
      child: Icon(Icons.add),
    );
  }
}
