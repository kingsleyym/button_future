import 'package:flutter/material.dart';

class SignInRegisterButton extends StatelessWidget {
  final String buttonText;
  final Function callback;
  const SignInRegisterButton(
      {super.key, required this.buttonText, required this.callback});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkWell(
      onTap: () => callback(),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: themeData.colorScheme.secondary,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            buttonText,
            style: themeData.textTheme.headline5,
          ),
        ),
      ),
    );
  }
}
