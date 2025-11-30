import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  final VoidCallback? onRetryPressed;

  const FailureWidget({super.key, this.onRetryPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Center(child: Text('Произошла ошибка')),
        TextButton(
          onPressed: onRetryPressed,
          child: Text('Повторить'),
        ),
      ],
    );
  }
}
