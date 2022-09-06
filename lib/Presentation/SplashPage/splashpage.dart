import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../routes/router.gr.dart';

import '../../application/auth/auth/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthStateAuthenticated) {
          context.router.replace(HomePageRoute());
        } else if (state is AuthStateUnauthenticated) {
          context.router.replace(const SignUpPageRoute());
        }
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
