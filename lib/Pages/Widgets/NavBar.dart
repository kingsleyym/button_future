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
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 30),
        child: Container(
          height: 70,
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
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.1)
                ],
                stops: [0.0, 1.0],
              ),
              borderRadius: BorderRadius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()),
                        );
                      },
                      icon: Icon(
                        Icons.home_filled,
                        size: 29,
                      ),
                      color: Colors.black.withOpacity(0.6)),
                ),
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
          ),
        ).asGlass(clipBorderRadius: BorderRadius.circular(50)));
  }
}
