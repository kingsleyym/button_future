import 'package:button_future/Pages/Widgets/NavBar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final List<String> countries = [
    "Tutorials",
    "Quick Tips",
    "Challenges",
    "Plugins",
    "Materials",
    "Courses"
  ];
  LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBAr(),
      body: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 100),
              child: Row(
                children: [
                  Text(
                    "Explore\nCollections",
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  const Spacer(),
                  Container(
                    height: 80,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 3, color: Colors.white)),
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            CatagoryMenu(countries: countries),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}

class CatagoryMenu extends StatelessWidget {
  const CatagoryMenu({
    Key? key,
    required this.countries,
  }) : super(key: key);

  final List<String> countries;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: countries.map((country) {
            return Center(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextButton(
                      autofocus: true,
                      onPressed: () {},
                      child: Text(
                        country,
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.grey),
                      ),
                    )));
          }).toList(),
        ),
      ),
    );
  }
}
