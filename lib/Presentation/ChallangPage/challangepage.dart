import 'package:button_future/Presentation/ChallangPage/challengewidgets/sliderheader.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../Widgets/slider_knob.dart';
import 'challengewidgets/sliderbody.dart';
import 'challengewidgets/header_slider.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: Stack(children: [
          SlidingUpPanel(
            color: Colors.transparent,
            backdropEnabled: false,
            backdropColor: Colors.transparent,
            parallaxEnabled: true,
            parallaxOffset: 0.09,
            renderPanelSheet: false,
            defaultPanelState: PanelState.CLOSED,
            boxShadow: const [
              BoxShadow(
                blurRadius: 0.0,
              )
            ],
            maxHeight: MediaQuery.of(context).size.height * 0.75,
            minHeight: MediaQuery.of(context).size.height * 0.10,
            panel: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.white.withOpacity(0.4)
                  ],
                  stops: const [0.0, 1.0],
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                  )
                ],
                border: Border.all(
                    color: Colors.white.withOpacity(0.2), width: 1.0),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Center(child: SliderKnob()),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                    child: HeaderSlider(),
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
                        stops: const [0.0, 1.0],
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
                        const Spacer(),
                        Text(
                          'by Apiens',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ]),
                    )),
                  )..asGlass(clipBorderRadius: BorderRadius.circular(50)),
                  const SizedBox(
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
                          stops: const [0.0, 1],
                        ),
                        borderRadius: BorderRadius.circular(40)),
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: MediaQuery.of(context).size.height * 0.09,
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
                  )..asGlass(clipBorderRadius: BorderRadius.circular(50)),
                ],
              ),
            ).asGlass(
                clipBorderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                tileMode: TileMode.decal),
            body: const SliderBody(),
          ),
          const SliderHeader()
        ]));
  }
}
