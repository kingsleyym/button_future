import 'package:flutter/material.dart';

class CatagoryMenu extends StatefulWidget {
  CatagoryMenu({
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
    return Container(
        height: 60,
        child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListView.builder(
                itemCount: countries.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          slectedIndex = index;
                        });

                        print("ich habe " + countries[index] + " gepressed");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: slectedIndex == index
                                ? Border(
                                    bottom: BorderSide(
                                        width: 4.0,
                                        color:
                                            Color.fromARGB(255, 255, 102, 0)),
                                  )
                                : null),
                        padding: EdgeInsets.only(bottom: 4),
                        child: Text(countries[index],
                            style: slectedIndex != index
                                ? themeData.textTheme.headline4!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  )
                                : themeData.textTheme.headline4!.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.orange)),
                      ),
                    ),
                  ));
                })));
  }
}
