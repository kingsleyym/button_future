import 'package:flutter/material.dart';

import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class UserPageMain extends StatelessWidget {
  const UserPageMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      ZoomDrawer.of(context)!.toggle();
                    },
                    icon: const Icon(Icons.workspaces_filled),
                  ),
                ],
              ),
            ),
            Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
