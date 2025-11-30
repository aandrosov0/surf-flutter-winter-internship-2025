import 'package:flutter/material.dart';

class CheckedItem extends StatelessWidget {
  final bool checked;
  final String label;
  final ValueChanged<bool?>? onChanged;

  const CheckedItem({
    super.key,
    required this.checked,
    required this.label,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onChanged == null ? null : () => onChanged!(!checked),
        child: Row(
          children: [
            Checkbox(value: checked, onChanged: onChanged),
            Text(label),
          ],
        ),
      ),
    );
  }
}
