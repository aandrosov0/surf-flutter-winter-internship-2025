import 'package:app/ui/state/fruit_state.dart';
import 'package:app/ui/view_models/new_recipe_view_model.dart';
import 'package:app/ui/widgets/checked_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../result.dart';

class NewRecipeScreen extends StatefulWidget {
  final NewRecipeViewModel _newRecipeViewModel;

  const NewRecipeScreen({
    super.key,
    required NewRecipeViewModel newRecipeViewModel,
  }) : _newRecipeViewModel = newRecipeViewModel;

  @override
  State<NewRecipeScreen> createState() => _NewRecipeScreenState();
}

class _NewRecipeScreenState extends State<NewRecipeScreen> {
  late final _newRecipeViewModel = widget._newRecipeViewModel;

  final _recipeTitleController = TextEditingController();
  final _recipeDescriptionController = TextEditingController();

  var _canBeSaved = false;

  @override
  void initState() {
    _recipeTitleController.addListener(_onRecipeTitleChanged);
    super.initState();
  }

  @override
  void dispose() {
    _recipeTitleController.dispose();
    _recipeDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Создание рецепта')),
      body: ListenableBuilder(
        listenable: _newRecipeViewModel,
        builder: (_, _) => Padding(
          padding: EdgeInsets.all(8),
          child: SafeArea(
            child: Stack(
              children: [
                Column(
                  spacing: 20,
                  children: [
                    _buildTitleTextField(),
                    _buildDescriptionTextField(),
                    _buildFruitList(),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _buildSaveButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleTextField() {
    final status = _newRecipeViewModel.status;

    return TextField(
      controller: _recipeTitleController,
      enabled: status is Ok,
      decoration: InputDecoration(labelText: 'Название рецепта'),
    );
  }

  Widget _buildDescriptionTextField() {
    final status = _newRecipeViewModel.status;

    return TextField(
      controller: _recipeDescriptionController,
      enabled: status is Ok,
      decoration: InputDecoration(labelText: 'Описание рецепта'),
      maxLines: 3,
    );
  }

  Widget _buildFruitList() {
    final fruits = _newRecipeViewModel.favorites;

    return Expanded(
      child: ListView.builder(
        itemBuilder: (_, index) => _buildFruitListItem(fruits[index]),
        itemCount: fruits.length,
      ),
    );
  }

  Widget _buildFruitListItem(FruitState fruit) {
    final status = _newRecipeViewModel.status;

    return CheckedItem(
      checked: _newRecipeViewModel.checkedFruits.contains(fruit),
      label: fruit.name,
      onChanged: status is Ok
          ? (added) => _newRecipeViewModel.checkFruit(fruit)
          : null,
    );
  }

  Widget _buildSaveButton() {
    final status = _newRecipeViewModel.status;
    final active = _canBeSaved && status is Ok;

    return ElevatedButton(
      onPressed: active ? _onSaveButtonPressed : null,
      child: Text('Сохранить'),
    );
  }

  void _onRecipeTitleChanged() {
    var text = _recipeTitleController.text;
    setState(() => _canBeSaved = text.trim().isNotEmpty);
  }

  void _onSaveButtonPressed() async {
    final name = _recipeTitleController.text;
    final description = _recipeDescriptionController.text;

    await _newRecipeViewModel.save(name, description);

    if (!context.mounted) {
      return;
    }
    context.pop();
  }
}
