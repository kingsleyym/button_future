import 'package:flutter/material.dart';

import 'SliderBody.dart';

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
              SizedBox(
                height: 20,
              ),
              GlasBUtton(icons: Icons.arrow_back_ios_new_rounded),
              SizedBox(
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
