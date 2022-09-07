import 'package:flutter/material.dart';

class TodoColor {
  final Color color;

  static const List<Color> predefinedColors = [
    Color.fromARGB(255, 153, 0, 0),
    Color.fromARGB(255, 0, 153, 89),
    Color.fromARGB(255, 7, 1, 94),
    Color.fromARGB(255, 46, 0, 11),
    Color.fromARGB(255, 70, 34, 0),
  ];

  TodoColor({
    required this.color,
  });
}
