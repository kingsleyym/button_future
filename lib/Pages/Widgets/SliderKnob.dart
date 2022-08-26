import 'package:flutter/material.dart';

class SliderKnob extends StatelessWidget {
  const SliderKnob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
    );
  }
}
