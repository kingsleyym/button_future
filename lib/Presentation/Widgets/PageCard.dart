import 'dart:ui';

import 'package:flutter/material.dart';

class PageCard extends StatelessWidget {
  const PageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://www.monopol-magazin.de/sites/default/files/2022-01/FC3_itGXEAA6z5g.jpg',
              )),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                )
              ],
              border:
                  Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.1)
                ],
                stops: [0.2, 0.5],
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trending NFT\'s',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.white.withOpacity(0.6)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' Once you have your environment set up for Flutter,\n you can run the following to create a new application:',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
