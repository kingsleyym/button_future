// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'Widgets/nav_bar.dart';
import 'Widgets/page_card.dart';
import 'landingpage/widgets/categorylist.dart';

class RealHOme extends StatelessWidget {
  const RealHOme({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const NavBAr(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 90,
        leadingWidth: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.window_outlined,
          size: 25,
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
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
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
                children: const [
                  PageCard(
                    title: "WAVE Plugin",
                    body:
                        ' Once you have your environment set up for Flutter,\n you can run the following to create a new application:',
                    image:
                        'https://legiit-service.s3.amazonaws.com/4572035e16c82641760668c527e095f0/35d2400ec86f3326efe204109ab10989.jpg',
                  ),
                  PageCard(
                      title: "WAVE Plugin",
                      body:
                          ' Once you have your environment set up for Flutter,\n you can run the following to create a new application:',
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJgWLnC4CH_Np9fZ8N3p7hoTmWQgigpRKj1g&usqp=CAU'),
                  PageCard(
                    title: "WoRLDxx Plugin",
                    body:
                        ' Once you have your environment set up for Flutter,\n you can run the following to create a new application:',
                    image:
                        'https://www.fivesquid.com/pics/t2/1645891499-193904-1-1.jpg',
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 35,
            ),
            const SizedBox(height: 30, child: CatagoryMenu()),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
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
                    height: size.height * 0.20,
                    width: size.width * 0.4,
                    child: PageView(
                      physics: const BouncingScrollPhysics(),
                      children: const [
                        PageCard(
                          title: "WAVE Plugin",
                          body:
                              ' Once you have your environment set up for Flutter,',
                          image:
                              'https://legiit-service.s3.amazonaws.com/4572035e16c82641760668c527e095f0/35d2400ec86f3326efe204109ab10989.jpg',
                        ),
                        PageCard(
                            title: "WAVE Plugin",
                            body:
                                ' Once you have your environment set up for Flutter,',
                            image:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJgWLnC4CH_Np9fZ8N3p7hoTmWQgigpRKj1g&usqp=CAU'),
                        PageCard(
                          title: "WoRLDxx Plugin",
                          body:
                              ' Once you have your environment set up for Flutter,',
                          image:
                              'https://www.fivesquid.com/pics/t2/1645891499-193904-1-1.jpg',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
