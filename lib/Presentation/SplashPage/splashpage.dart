import 'package:auto_route/auto_route.dart';
import 'package:fade_out_particle/fade_out_particle.dart';
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
          Future.delayed(const Duration(seconds: 15), () {});
          context.router.replace(const HomePageRoute());
        } else if (state is AuthStateUnauthenticated) {
          Future.delayed(const Duration(seconds: 15), () {});
          context.router.replace(const SignUpPageRoute());
        }
      },
      child: const Scaffold(
        body: Center(
          child: FadeOutParticle(
            disappear: true,
            child: Text('Fade out Particle'),
          ),
        ),
      ),
    );
  }
}
