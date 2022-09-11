import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';

import '../../api/nav_service.dart';

class UserPageMain extends StatelessWidget {
  const UserPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ZoomDrawer.of(context)!.toggle();
                },
                icon: Icon(Icons.workspaces_filled),
              )
            ],
          )
        ],
      ),
    );
  }
}
