import 'package:flutter/material.dart';

class CatagoryMenu extends StatefulWidget {
  const CatagoryMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<CatagoryMenu> createState() => _CatagoryMenuState();
}

class _CatagoryMenuState extends State<CatagoryMenu> {
  int slectedIndex = 0;

  final List<String> countries = [
    "Tutorials",
    "Quick Tips",
    "Challenges",
    "Plugins",
    "Materials",
    "Courses"
  ];

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return SizedBox(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ListView.builder(
                itemCount: countries.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: InkWell(
                      splashColor: Colors.orange,
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        setState(() {
                          slectedIndex = index;
                        });
                      },
                      child: Column(
                        children: [
                          Text(countries[index],
                              style: slectedIndex != index
                                  ? themeData.textTheme.headline4!.copyWith(
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w700,
                                    )
                                  : themeData.textTheme.headline4!.copyWith(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                      color: Colors.orange)),
                          Container(
                            width: 20,
                            height: 10,
                            decoration: BoxDecoration(
                                border: slectedIndex == index
                                    ? const Border(
                                        bottom: BorderSide(
                                            width: 2.0,
                                            color: Color.fromARGB(
                                                255, 255, 102, 0)),
                                      )
                                    : null),
                          )
                        ],
                      ),
                    ),
                  ));
                })));
  }
}
