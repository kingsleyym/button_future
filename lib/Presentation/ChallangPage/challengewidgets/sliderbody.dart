import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

var linearGradient = LinearGradient(
  colors: [Colors.white.withOpacity(0.2), Colors.white.withOpacity(0.4)],
  stops: const [0.0, 1.0],
);

class SliderBody extends StatefulWidget {
  const SliderBody({
    super.key,
  });

  @override
  State<SliderBody> createState() => _SliderBodyState();
}

class _SliderBodyState extends State<SliderBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
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
            colors: [Colors.black.withOpacity(0.4), Colors.transparent],
            stops: const [0.0, 0.5],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Apiens',
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 60, color: Colors.white),
                      ),
                      Row(
                        children: [
                          Text(
                            'by Apiens',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.verified,
                            color: Colors.white,
                            size: 35,
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: linearGradient,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                        )
                      ],
                    ),
                    height: 60,
                    width: 60,
                    child: const Center(
                      child:
                          GlasBUtton(icons: Icons.arrow_back_ios_new_rounded),
                    ),
                  ).asGlass(clipBorderRadius: BorderRadius.circular(50))
                ],
              ),
            ),
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              GlassCOntainerSmall(
                huhu: linearGradient,
              ).asGlass(clipBorderRadius: BorderRadius.circular(50)),
              GlassCOntainerSmall(
                huhu: linearGradient,
              ).asGlass(clipBorderRadius: BorderRadius.circular(50)),
              GlassCOntainerSmall(
                huhu: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.primary
                  ],
                  stops: const [.0, 1.0],
                ),
              ).asGlass(clipBorderRadius: BorderRadius.circular(50)),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            )
          ],
        ),
      ),
    );
  }
}

class GlassCOntainerSmall extends StatelessWidget {
  final LinearGradient huhu;
  const GlassCOntainerSmall({
    super.key,
    required this.huhu,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
        gradient: huhu,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
          )
        ],
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 30.0, bottom: 30),
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
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 20,
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
                .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(
            width: 10,
          ),
        ]),
      )),
    );
  }
}

class GlasBUtton extends StatelessWidget {
  final IconData icons;
  const GlasBUtton({
    super.key,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.of(context).pop();
      }),
      child: Container(
        decoration: BoxDecoration(
          gradient: linearGradient,
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
          child: Icon(icons, size: 25, color: Colors.white),
        ),
      ).asGlass(),
    );
  }
}
