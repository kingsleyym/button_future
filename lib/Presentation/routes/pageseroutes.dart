import 'package:auto_route/auto_route.dart';
import 'package:button_future/Presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glass/glass.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../application/auth/auth/auth_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            if (state is AuthStateUnauthenticated) {
              AutoRouter.of(context).push(const SignUpPageRoute());
            }
          }),
        ],
        child: AutoTabsScaffold(
            extendBody: true,
            routes: [
              LandingPageRoute(),
              RealHOmeRoute(),
              ChallengePageRoute(),
            ],
            bottomNavigationBuilder: (_, tabsRouter) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26.0, vertical: 20),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 40,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                        )
                      ],
                      border: Border.all(
                          color: Colors.white.withOpacity(0.2), width: 1.0),
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
                      padding: EdgeInsets.all(4.0),
                      child: GNav(
                          selectedIndex: tabsRouter.activeIndex,
                          onTabChange: tabsRouter.setActiveIndex,
                          tabBackgroundColor:
                              Theme.of(context).colorScheme.primary,
                          padding: EdgeInsets.all(20),
                          backgroundColor: Colors.transparent,
                          tabs: [
                            GButton(
                              icon: Icons.home,
                              iconSize: 24,
                            ),
                            GButton(
                              icon: Icons.military_tech_outlined,
                            ),
                            GButton(icon: Icons.home),
                            GButton(icon: Icons.person_outlined),
                          ])),
                ).asGlass(clipBorderRadius: BorderRadius.circular(50)),
              );
            }));
  }
}
