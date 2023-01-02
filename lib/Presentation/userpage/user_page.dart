import 'package:button_future/Presentation/userpage/user_page_main.dart';
import 'package:button_future/Presentation/userpage/user_page_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return ZoomDrawer(
      showShadow: true,
      shadowLayer1Color: theme.secondary.withOpacity(0.3),
      shadowLayer2Color: theme.secondary.withRed(155).withOpacity(0.3),
      angle: 0,
      dragOffset: 0,
      menuScreen: const UserPageMenu(),
      mainScreen: const UserPageMain(),
      style: DrawerStyle.defaultStyle,
    );
  }
}
