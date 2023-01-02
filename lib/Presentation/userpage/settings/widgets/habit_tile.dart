import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final bool habitBool;
  final Function(bool?)? onChanged;
  const HabitTile(
      {super.key,
      required this.habitName,
      required this.habitBool,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    final ColorScheme themeColor = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: themeColor.secondary.withOpacity(0.8),
        ),
        child: Row(
          children: [
            Checkbox(
              value: habitBool,
              onChanged: onChanged,
              activeColor: themeColor.primary.withOpacity(0.8),
              focusColor: themeColor.primary.withOpacity(0.8),
              fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return themeColor.primary.withOpacity(0.8);
                }
                return themeColor.primary.withOpacity(0.8);
              }),
            ),
            Text(
              habitName,
              style: TextStyle(color: themeColor.primary.withOpacity(0.8)),
            ),
          ],
        ),
      ).asGlass(clipBorderRadius: BorderRadius.circular(20)),
    );
  }
}
