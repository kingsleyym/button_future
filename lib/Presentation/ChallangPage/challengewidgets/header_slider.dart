import 'package:flutter/material.dart';

class Header_SLider extends StatelessWidget {
  const Header_SLider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.4)
            ],
            stops: [0.0, 1.0],
          ),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
            )
          ],
        ),
        height: 60,
        width: 60,
        child: Center(
          child: Icon(Icons.military_tech, size: 35, color: Colors.white),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Apiens',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 24, color: Colors.white),
            ),
            Row(
              children: [
                Text(
                  'by Apiens',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.verified,
                  color: Colors.white,
                  size: 35,
                )
              ],
            ),
          ])
    ]);
  }
}
