import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String title;
  final String description;

  final Iterable<String> fruits;

  final int calories;
  final double fat;
  final double sugar;
  final double carbohydrates;
  final double protein;

  final VoidCallback? onPressed;
  final VoidCallback? onDeletePressed;

  const RecipeListItem({
    super.key,
    required this.title,
    required this.description,
    required this.fruits,
    required this.calories,
    required this.fat,
    required this.sugar,
    required this.carbohydrates,
    required this.protein,
    this.onPressed,
    this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    final titleText = Text(
      title,
      style: textTheme.titleMedium,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );

    final subtitleText = Text(
      description,
      style: textTheme.bodyMedium,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
    );

    final fruitsText = Text(
      fruits.join(','),
      style: textTheme.bodySmall,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );

    final deleteButton = IconButton(
      onPressed: onDeletePressed,
      icon: Icon(Icons.delete),
    );

    final nutritions = '''Калории: $calories 
Белки: $protein   Жиры: $fat    Углеводы: $carbohydrates 
Сахар: $sugar''';

    final nutritionsText = Text(nutritions, style: textTheme.bodySmall);

    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(children: [titleText, Spacer(), deleteButton]),
              subtitleText,
              fruitsText,
              SizedBox(height: 10),
              nutritionsText,
            ],
          ),
        ),
      ),
    );
  }
}
