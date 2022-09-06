import 'package:auto_route/auto_route.dart';
import 'package:button_future/Presentation/SignUP/signup_page.dart';
import 'package:button_future/Presentation/Widgets/NavBar.dart';
import 'package:button_future/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../api/Theme_service.dart';
import '../../application/auth/auth/auth_bloc.dart';
import '../routes/router.gr.dart';
import 'widgets/CategoryList.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeText = Theme.of(context).textTheme;
    final themeColor = Theme.of(context).colorScheme;
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 100),
              child: Row(
                children: [
                  Text(
                    "Explore\nCollections",
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Provider.of<ThemeService>(context, listen: false)
                          .toggleTheme();
                    },
                    child: Container(
                      height: 80,
                      width: 55,
                      decoration: BoxDecoration(
                          color: themeColor.onPrimary,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              width: 3, color: AppTheme.gradientColorB)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      BlocProvider.of<AuthBloc>(context)
                          .add(SignOutPressEvent());
                    },
                    child: Container(
                      height: 80,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 18, 119),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 3, color: Colors.white)),
                      child: Center(
                        child: Icon(Icons.logout),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            CatagoryMenu(),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 120,
            )
          ],
        ),
      ),
    );
  }
}
