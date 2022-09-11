import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SettingUser extends StatelessWidget {
  const SettingUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
      child: TextButton(
        onPressed: () {
          context.router.navigateBack();
        },
        child: Text(
          'Back',
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(fontWeight: FontWeight.w800),
        ),
      ),
    )));
  }
}
