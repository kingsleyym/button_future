import 'package:button_future/Pages/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

import '../ChallengePage.dart';

class NavBAr extends StatelessWidget {
  const NavBAr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width * 40,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                )
              ],
              border:
                  Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.3),
                  Colors.white.withOpacity(0.1)
                ],
                stops: [0.0, 1.0],
              ),
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LandingPage()),
                    );
                  },
                  icon: Icon(Icons.home_filled),
                  color: Colors.white.withOpacity(0.6)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_filled),
                  color: Colors.white.withOpacity(0.6)),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChallengePage()),
                    );
                  },
                  icon: Icon(Icons.emoji_events),
                  color: Colors.white.withOpacity(0.6)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_filled),
                  color: Colors.white.withOpacity(0.6)),
            ],
          ),
        ).asGlass(clipBorderRadius: BorderRadius.circular(50)));
  }
}
