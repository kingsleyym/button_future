import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

import '../ChallangPage/ChallengePage.dart';
import 'List_tile.dart';
import 'NavBar.dart';
import 'SliderKnob.dart';

class Pannel_down extends StatelessWidget {
  const Pannel_down({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.2),
            Colors.white.withOpacity(0.4)
          ],
          stops: [0.0, 1.0],
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
          )
        ],
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
      ),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 500,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const SliderKnob(),
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Text(
                        'Trending NFT\'s',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: Colors.white.withOpacity(0.6)),
                      ),
                      Spacer(),
                      Icon(Icons.donut_large_sharp,
                          color: Colors.white.withOpacity(0.6))
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 400,
                child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      ListTilee(
                        imageUrl:
                            'https://cdn.prod.www.spiegel.de/images/67473fe3-658c-4c53-81a2-42096c893d8a_w948_r1.778_fpx53_fpy50.png',
                      ),
                      ListTilee(
                        imageUrl:
                            'https://99designs-blog.imgix.net/blog/wp-content/uploads/2021/05/merlin_184196631_939fb22d-b909-4205-99d9-b464fb961d32-superJumbo.jpeg?auto=format&q=60&fit=max&w=930',
                      ),
                      ListTilee(
                        imageUrl:
                            'https://img.welt.de/img/kultur/kunst/mobile234767266/4372507937-ci102l-w1024/Bored-Ape-Yacht-Club-by-Yuga-Labs-Kunst.jpg',
                      ),
                      ListTilee(
                        imageUrl:
                            'https://www.monopol-magazin.de/sites/default/files/2022-01/FC3_itGXEAA6z5g.jpg',
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    ).asGlass(clipBorderRadius: BorderRadius.circular(30));
  }
}
