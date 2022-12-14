import 'package:auto_route/auto_route.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:button_future/Presentation/Widgets/dark_mode_toggle.dart';
import 'package:button_future/placeholder.dart';
import 'package:fade_out_particle/fade_out_particle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth/auth_bloc.dart';
import '../routes/router.gr.dart';

class UserPageMenu extends StatelessWidget {
  const UserPageMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final wupp = WupperTal();
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DarkModeToggle(),
                Spacer(),
                InkWell(
                  onTap: () {
                    BlocProvider.of<AuthBloc>(context).add(SignOutPressEvent());
                  },
                  child: const Center(
                    child: Icon(Icons.logout),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    AvatarGlow(
                      glowColor: Colors.deepOrange,
                      endRadius: 60.0,
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 2, color: Colors.deepOrange),
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 0.3,
                                  color: Colors.deepOrange)
                            ]),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(wupp.img1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Luca Kingsley',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'uiid: 0495030',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  fontWeight: FontWeight.w900, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            TxtButton(
              btnName: "settings",
            ),
            TxtButton(
              btnName: "theme",
            ),
            TxtButton(
              btnName: "profil settings",
            ),
            TxtButton(
              btnName: "settings",
            ),
            TxtButton(
              btnName: "profil settings",
            ),
            SizedBox(
              height: 60,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class TxtButton extends StatelessWidget {
  final btnName;
  const TxtButton({
    super.key,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.navigateNamedTo('/setting-user');
        },
        child: Text(btnName,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(letterSpacing: 1, fontWeight: FontWeight.w600)));
  }
}
