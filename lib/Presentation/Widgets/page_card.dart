import 'package:flutter/material.dart';

class PageCard extends StatelessWidget {
  final String image;
  final String body;
  final String title;
  final bool resp;
  const PageCard({
    Key? key,
    required this.image,
    required this.body,
    required this.title,
    required this.resp,
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
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0)
                ],
                stops: const [0.2, 0.5],
              ),
              borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            child: Padding(
              padding: resp
                  ? const EdgeInsets.all(24.0)
                  : const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: resp
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: resp
                          ? Theme.of(context).textTheme.headline2!.copyWith(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w900)
                          : Theme.of(context).textTheme.headline2!.copyWith(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 16,
                              fontWeight: FontWeight.w900)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(body,
                      style: resp
                          ? Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white.withOpacity(0.6),
                              fontWeight: FontWeight.w600,
                              fontSize: 14)
                          : Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 12,
                              fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
