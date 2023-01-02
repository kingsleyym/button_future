import 'package:flutter/material.dart';

class EnterNewHabit extends StatelessWidget {
  const EnterNewHabit({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const TextField(),
      actions: [
        MaterialButton(
          color: Theme.of(context).colorScheme.secondary,
          onPressed: () {},
          child: Text(
            'add',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        MaterialButton(
          color: Theme.of(context).colorScheme.secondary,
          onPressed: () {},
          child: Text(
            'cancle',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ],
    );
  }
}
