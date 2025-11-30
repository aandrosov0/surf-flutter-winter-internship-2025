import 'package:app/data/repositories/fruits_repository.dart';
import 'package:app/data/repositories/recipes_repository.dart';
import 'package:app/data/repositories/recipes_repository_impl.dart';
import 'package:app/ui/screens/favorites_screen.dart';
import 'package:app/ui/screens/filters_screen.dart';
import 'package:app/ui/screens/fruit_details_screen.dart';
import 'package:app/ui/screens/fruits_screen.dart';
import 'package:app/ui/screens/main_screen.dart';
import 'package:app/ui/screens/new_recipe_screen.dart';
import 'package:app/ui/screens/recipes_screen.dart';
import 'package:app/ui/theme.dart';
import 'package:app/ui/view_models/favorites_view_model.dart';
import 'package:app/ui/view_models/fruit_details_view_model.dart';
import 'package:app/ui/view_models/fruits_view_model.dart';
import 'package:app/ui/view_models/new_recipe_view_model.dart';
import 'package:app/ui/view_models/recipes_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/repositories/fruits_repository_impl.dart';

void main() => runApp(const App());

final _routes = GoRouter(
  initialLocation: '/fruits',
  routes: [
    ShellRoute(
      builder: (_, _, child) => MainScreen(child: child),
      routes: [
        GoRoute(
          path: '/fruits',
          builder: (context, _) => FruitsScreen(
            fruitsViewModel: FruitsViewModel(fruitsRepository: context.read()),
          ),
        ),
        GoRoute(
          path: '/favorites',
          builder: (context, _) => FavoritesScreen(
            favoritesViewModel: FavoritesViewModel(
              fruitsRepository: context.read(),
            ),
          ),
        ),
        GoRoute(
          path: '/recipes',
          builder: (context, _) => RecipesScreen(
            recipesViewModel: RecipesViewModel(
              recipesRepository: context.read(),
              fruitsRepository: context.read(),
            ),
          ),
        ),
      ],
    ),
    GoRoute(
      path: '/fruit/:fruitId',
      builder: (context, state) {
        final fruitId = int.parse(state.pathParameters['fruitId']!);
        final viewModel = FruitDetailsViewModel(
          fruitId: fruitId,
          fruitsRepository: context.read(),
        );

        return FruitDetailsScreen(fruitDetailsViewModel: viewModel);
      },
    ),
    GoRoute(path: '/fruits/filters', builder: (_, _) => FiltersScreen()),
    GoRoute(
      path: '/recipe/new',
      builder: (context, _) => NewRecipeScreen(
        newRecipeViewModel: NewRecipeViewModel(
          fruitsRepository: context.read(),
          recipesRepository: context.read(),
        ),
      ),
    ),
  ],
);

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var _loading = true;

  late final SharedPreferences _sharedPreferences;

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() async {
    setState(() {
      _loading = true;
    });
    _sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Container();
    }

    return MultiProvider(
      providers: [
        Provider<FruitsRepository>(
          create: (_) => FruitsRepositoryImpl(_sharedPreferences),
        ),
        Provider<RecipesRepository>(
          create: (_) => RecipesRepositoryImpl(_sharedPreferences),
        ),
      ],
      child: MaterialApp.router(routerConfig: _routes, theme: ThemeData(colorScheme: AppTheme.darkScheme()),),
    );
  }
}
