import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../application/auth/auth/auth_bloc.dart';

import '../Widgets/dark_mode_toggle.dart';
import 'widgets/categorylist.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final TextTheme themeText = Theme.of(context).textTheme;
    final ColorScheme themeColor = Theme.of(context).colorScheme;
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 9,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 28,
              ),
              child: Row(
                children: [
                  const Spacer(),
                  const DarkModeToggle(),
                  InkWell(
                    onTap: () {
                      BlocProvider.of<AuthBloc>(context)
                          .add(SignOutPressEvent());
                    },
                    child: const Center(
                      child: Icon(Icons.logout),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 30),
              child: Row(
                children: [
                  Text(
                    "Explore\nCollections",
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 36, letterSpacing: 2),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const SizedBox(height: 30, child: CatagoryMenu()),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.width * 0.9,
                child: Shimmer.fromColors(
                  baseColor: themeColor.primary,
                  highlightColor: themeColor.onPrimary,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                )),
            Container()
          ])),
    );
  }
}
