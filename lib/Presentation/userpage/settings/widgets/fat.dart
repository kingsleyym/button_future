import 'package:flutter/material.dart';

class MyFloatingActioButton extends StatelessWidget {
  final Function()? onPressed;
  const MyFloatingActioButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 85.0),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: Icon(
          Icons.playlist_add,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
