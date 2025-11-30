import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final bool favorite;
  final VoidCallback? onPressed;

  const FavoriteButton({super.key, this.favorite = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(favorite ? Icons.favorite : Icons.favorite_outline),
    );
  }
}
