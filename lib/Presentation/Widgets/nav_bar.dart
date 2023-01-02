import 'package:auto_route/auto_route.dart';
import 'package:button_future/Presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBAr extends StatelessWidget {
  const NavBAr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 20),
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
              stops: const [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(40)),
        child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: GNav(
                tabBackgroundColor: Theme.of(context).colorScheme.primary,
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.transparent,
                tabs: [
                  GButton(
                    icon: Icons.military_tech_outlined,
                    onPressed: () {
                      AutoRouter.of(context).replace(const RealHOmeRoute());
                    },
                  ),
                  const GButton(icon: Icons.home),
                  const GButton(icon: Icons.person_outlined),
                ])),
      ).asGlass(clipBorderRadius: BorderRadius.circular(50)),
    );
  }
}
