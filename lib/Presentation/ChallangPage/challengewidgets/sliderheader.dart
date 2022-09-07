import 'package:flutter/material.dart';

import 'sliderbody.dart';

class SliderHeader extends StatelessWidget {
  const SliderHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const GlasBUtton(icons: Icons.arrow_back_ios_new_rounded),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                    )
                  ],
                ),
                height: 60,
                width: 60,
              ),
            ],
          )
        ],
      ),
    );
  }
}
