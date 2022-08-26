import 'package:button_future/Pages/RealHome.dart';
import 'package:button_future/Pages/challengewidgets/SliderHeader.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'Widgets/PannelDown.dart';
import 'Widgets/SliderKnob.dart';
import 'challengewidgets/SliderBody.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SlidingUpPanel(
        color: Colors.transparent,
        backdropEnabled: false,
        backdropColor: Colors.transparent,
        parallaxEnabled: true,
        parallaxOffset: 0.09,
        renderPanelSheet: false,
        defaultPanelState: PanelState.CLOSED,
        boxShadow: [
          BoxShadow(
            blurRadius: 0.0,
          )
        ],
        maxHeight: MediaQuery.of(context).size.height * 0.75,
        minHeight: MediaQuery.of(context).size.height * 0.20,
        panel: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.2),
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
            border:
                Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(child: SliderKnob()),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Header_SLider(),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.white.withOpacity(0.4)
                    ],
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                    )
                  ],
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 0.0, bottom: 60),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '10',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 40, color: Colors.white),
                        ),
                        Text(
                          'min.',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      'by Apiens',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ]),
                )),
              ).asGlass(clipBorderRadius: BorderRadius.circular(50)),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white.withOpacity(0.3),
                        Colors.black.withOpacity(0.4),
                      ],
                      stops: [0.0, 1],
                    ),
                    borderRadius: BorderRadius.circular(40)),
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.width * 0.20,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 85,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Container(
                          height: 85,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(50)),
                        )
                      ],
                    ),
                  ),
                ),
              ).asGlass(clipBorderRadius: BorderRadius.circular(50)),
            ],
          ),
        ).asGlass(),
        body: SliderBody(),
      ),
      SliderHeader()
    ]));
  }
}

class Header_SLider extends StatelessWidget {
  const Header_SLider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.4)
            ],
            stops: [0.0, 1.0],
          ),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
            )
          ],
        ),
        height: 60,
        width: 60,
        child: Center(
          child: Icon(Icons.military_tech, size: 35, color: Colors.white),
        ),
      ),
      SizedBox(
        width: 30,
      ),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Apiens',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 24, color: Colors.white),
            ),
            Row(
              children: [
                Text(
                  'by Apiens',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.verified,
                  color: Colors.white,
                  size: 35,
                )
              ],
            ),
          ])
    ]);
  }
}
