// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:button_future/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:glass/glass.dart';
import 'Widgets/page_card.dart';
import 'landingpage/widgets/categorylist.dart';

class RealHOme extends StatelessWidget {
  const RealHOme({super.key});

  @override
  Widget build(BuildContext context) {
    final wupp = WupperTal();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 90,
        leadingWidth: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            ZoomDrawer.of(context)!.toggle();
          },
          icon: const Icon(
            Icons.window_outlined,
            size: 25,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Icon(
              Icons.person_pin,
              size: 24,
            ),
          )
        ],
      ),
      body: Stack(children: [
        Column(children: [
          Container(
            height: 200,
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: const [
                  Positioned(
                    top: 100,
                    left: 90,
                    child: BackGround(
                      decH: 60,
                      decW: 260,
                      rotA: 45,
                    ),
                  ),
                  Positioned(
                      top: 100,
                      left: 50,
                      child: BackGround(
                        decH: 60,
                        decW: 60,
                        rotA: 45,
                      )),
                  Positioned(
                    top: 160,
                    left: 110,
                    child: BackGround(
                      decH: 60,
                      decW: 60,
                      rotA: 45,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(2, 2),
                      ),
                    ],
                    color: Colors.transparent),
                height: size.height * 0.38,
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    PageCard(
                      resp: true,
                      title: wupp.pagetitel,
                      body: wupp.body,
                      image: wupp.img8,
                    ),
                    PageCard(
                      resp: true,
                      title: wupp.pagetitel,
                      body: wupp.body,
                      image: wupp.img5,
                    ),
                    PageCard(
                      resp: true,
                      title: wupp.pagetitel,
                      body: wupp.body,
                      image: wupp.img6,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 35,
              ),
              const SizedBox(height: 30, child: CatagoryMenu()),
              const SizedBox(height: 20),
              NewWidget(size: size, wupp: wupp),
              const SizedBox(height: 20),
              NewWidget(size: size, wupp: wupp),
              const SizedBox(height: 20),
              NewWidget(size: size, wupp: wupp),
              const SizedBox(height: 20),
              NewWidget(size: size, wupp: wupp),
            ],
          ),
        ),
      ]),
    );
  }
}

class BackGround extends StatelessWidget {
  final double decW;
  final double decH;
  final int rotA;
  const BackGround({
    super.key,
    required this.decW,
    required this.decH,
    required this.rotA,
  });

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: AlwaysStoppedAnimation(rotA / 360),
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  spreadRadius: 4,
                  blurRadius: 10,
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 0, 0, 0),
                  spreadRadius: -4,
                  blurRadius: 5,
                )
              ],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 4,
                color: const Color.fromARGB(255, 255, 16, 183).withOpacity(0.7),
              )),
          height: decH,
          width: decW,
        ));
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.size,
    required this.wupp,
  });

  final Size size;
  final WupperTal wupp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.95,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              height: size.height * 0.20,
              width: size.width * 0.4,
              child: PageView(
                clipBehavior: Clip.none,
                physics: const BouncingScrollPhysics(),
                children: [
                  PageCard(
                    title: wupp.pagetitel,
                    body: wupp.body,
                    image: wupp.img1,
                    resp: false,
                  ),
                  PageCard(
                      resp: false,
                      title: wupp.pagetitel,
                      body: wupp.body,
                      image: wupp.img2),
                  PageCard(
                    resp: false,
                    title: wupp.pagetitel,
                    body: wupp.body,
                    image: wupp.img3,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 160,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(wupp.pagetitel),
                  Flexible(
                    child: Text(
                      wupp.body,
                      maxLines: 8,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ).asGlass(clipBorderRadius: BorderRadius.circular(20));
  }
}
