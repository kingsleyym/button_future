// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../api/api_service.dart';
import '../custom_tile.dart';
import '../model/articel_moodel.dart';
import 'Widgets/NavBar.dart';
import 'Widgets/PageCard.dart';
import 'Widgets/PannelDown.dart';

class RealHOme extends StatelessWidget {
  ApiService client = ApiService();

  get ture => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: NavBAr(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 90,
        leadingWidth: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.window_outlined,
          size: 25,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Icon(
              Icons.person_pin,
              size: 24,
            ),
          )
        ],
      ),
      body: Container(
        child: SlidingUpPanel(
          backdropEnabled: false,
          parallaxEnabled: true,
          parallaxOffset: 0.09,
          renderPanelSheet: false,
          defaultPanelState: PanelState.OPEN,
          boxShadow: [
            BoxShadow(
              blurRadius: 0.0,
            )
          ],
          maxHeight: MediaQuery.of(context).size.height * 0.67,
          minHeight: MediaQuery.of(context).size.height * 0.60,
          panel: const Pannel_down(),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  image: NetworkImage(
                      'https://pbs.twimg.com/media/FLugHiyXwAAEtT5.jpg')),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.7),
                  ],
                  stops: [0.0, 0.5],
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(2, 2),
                            ),
                          ],
                          color: Colors.black),
                      height: MediaQuery.of(context).size.height * 0.32,
                      child: PageView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          PageCard(),
                          PageCard(),
                          PageCard(),
                          PageCard(),
                          PageCard(),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 15,
                    ),
                    Container(
                      height: 45,
                      width: 360,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'TUTORIALS',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          ),
                          Text(
                            'PLUGINS',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade800),
                          ),
                          Text(
                            'TIPPS',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500),
                          ),
                          Text(
                            'MATERIALS',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
