import 'package:flutter/material.dart';

class PageCard extends StatelessWidget {
  final String image;
  final String body;
  final String title;
  const PageCard({
    Key? key,
    required this.image,
    required this.body,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
            )
          ],
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                image,
              )),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0)
                ],
                stops: const [0.1, 0.5],
              ),
              borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    body,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.6)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
