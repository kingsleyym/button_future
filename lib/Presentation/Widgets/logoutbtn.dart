import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth/auth_bloc.dart';

class LogOutBtn extends StatelessWidget {
  const LogOutBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<AuthBloc>(context).add(SignOutPressEvent());
      },
      child: const Center(
        child: Icon(Icons.logout),
      ),
    );
  }
}
