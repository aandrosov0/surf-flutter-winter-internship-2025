import 'package:app/ui/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class FruitListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool favorite;
  final VoidCallback? onPressed;
  final VoidCallback? onFavoritePressed;

  const FruitListItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.favorite = false,
    this.onPressed,
    this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    final titleText = Text(
      title,
      style: textTheme.titleMedium,
      overflow: TextOverflow.ellipsis,
    );

    final subtitleText = Text(
      subtitle,
      style: textTheme.bodyMedium,
      overflow: TextOverflow.ellipsis,
    );

    final favoriteButton = FavoriteButton(
      favorite: favorite,
      onPressed: onFavoritePressed,
    );

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
              Row(children: [titleText, Spacer(), favoriteButton]),
              subtitleText,
            ],
          ),
        ),
      ),
    );
  }
}
