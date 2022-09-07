import 'package:auto_route/auto_route.dart';
import 'package:button_future/Presentation/SignUP/Widgets/signinbutton.dart';
import 'package:button_future/Presentation/routes/router.gr.dart';
import 'package:button_future/core/failures/auth_failures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/SignUpFormBloc/sign_up_form_bloc.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    late String email;
    late String password;
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();

    String? validateEmail(String? input) {
      const emailRegex =
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
      if (input == null || input.isEmpty) {
        return "please enter email";
      } else if (RegExp(emailRegex).hasMatch(input)) {
        email = input;
        return null;
      } else {
        return 'incalid email format';
      }
    }

    String? validatePassword(String? input) {
      if (input == null || input.isEmpty) {
        return "please enter email";
      } else if (input.length >= 6) {
        password = input;
        return null;
      } else {
        return 'password to short';
      }
    }

    String mapFailureMessenger(AuthFailure failure) {
      switch (failure.runtimeType) {
        case ServerFailure:
          return "Server went wrong";
        case EmailAlreadyInUseFailure:
          return "email already in use";
        case InvalidEmailAndPasswordCombinationFailure:
          return "invalid email or password";
        default:
          return "something went wrong";
      }
    }

    final themeData = Theme.of(context);
    return BlocConsumer<SignUpFormBloc, SignupformState>(
      listenWhen: (p, c) =>
          p.authFailureOrSuccessOption != c.authFailureOrSuccessOption,
      listener: (context, state) {
        state.authFailureOrSuccessOption?.fold(
            () => {},
            (eitherfailureorsucces) => eitherfailureorsucces.fold((failure) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.redAccent,
                      content: Text(
                        mapFailureMessenger(failure),
                        style: themeData.textTheme.bodyText1,
                      )));
                }, (_) {
                  AutoRouter.of(context).replace(const HomePageRoute());
                }));
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showValidationMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          key: formkey,
          child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'Welcome',
                  style: themeData.textTheme.headline1!.copyWith(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 4,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Please register or sign in",
                    style: themeData.textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        letterSpacing: 4)),
                const SizedBox(
                  height: 80,
                ),
                TextFormField(
                  validator: validateEmail,
                  cursorColor: Colors.grey,
                  decoration: const InputDecoration(labelText: 'E-Mail'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: validatePassword,
                  obscureText: true,
                  cursorColor: Colors.grey,
                  decoration: const InputDecoration(labelText: 'Password'),
                ),
                const SizedBox(
                  height: 40,
                ),
                SignInRegisterButton(
                  buttonText: "sign in",
                  callback: () {
                    if (formkey.currentState!.validate()) {
                      BlocProvider.of<SignUpFormBloc>(context).add(
                          SignInWithEmailAndPasswordPressed(
                              email: email, password: password));
                    } else {
                      BlocProvider.of<SignUpFormBloc>(context).add(
                          SignInWithEmailAndPasswordPressed(
                              email: null, password: null));
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.redAccent,
                          content: Text(
                            "invalid input",
                            style: themeData.textTheme.bodyText1,
                          )));
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SignInRegisterButton(
                  buttonText: "Register ",
                  callback: () {
                    if (formkey.currentState!.validate()) {
                      BlocProvider.of<SignUpFormBloc>(context).add(
                          RegisterWithEmailAndPasswordPressed(
                              email: email, password: password));
                    } else {
                      BlocProvider.of<SignUpFormBloc>(context).add(
                          RegisterWithEmailAndPasswordPressed(
                              email: null, password: null));
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.redAccent,
                          content: Text(
                            "invalid input",
                            style: themeData.textTheme.bodyText1,
                          )));
                    }
                  },
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 25,
                  ),
                  LinearProgressIndicator(
                      color: themeData.colorScheme.secondary)
                ],
              ]),
        );
      },
    );
  }
}
