import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import 'package:button_future/Presentation/Widgets/page_card.dart';
import 'package:button_future/Presentation/routes/router.gr.dart';

import '../../application/news/observe/observe_bloc.dart';
import '../../application/todo/watch/bloc/observe_bloc.dart';
import '../../injecton.dart';
import '../Widgets/dark_mode_toggle.dart';
import '../Widgets/logoutbtn.dart';
import 'widgets/categorylist.dart';
import 'widgets/newsBloc.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final TextTheme themeText = Theme.of(context).textTheme;
    final ColorScheme themeColor = Theme.of(context).colorScheme;
    final observeBloc = sl<ObserveBloc>()..add(ObserveAll());

    return BlocProvider<ObserveBloc>(
      create: (context) => observeBloc,
      child: Scaffold(
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 9,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 28,
                  right: 28,
                  top: MediaQuery.of(context).size.height * 0.03,
                ),
                child: Row(
                  children: const [Spacer(), DarkModeToggle(), LogOutBtn()],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 28,
                    right: 28,
                    top: MediaQuery.of(context).size.height * 0.03),
                child: Row(
                  children: const [
                    Text(
                      "Explore\nCollections",
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 30, child: CatagoryMenu()),
              NewsBlocList(
                themeColor: themeColor,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
              )
            ])),
      ),
    );
  }
}
