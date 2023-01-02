import 'package:cached_network_image/cached_network_image.dart';
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
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: CachedNetworkImage(
        imageUrl: image,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(2, 2),
              ),
            ],
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: imageProvider,
            ),
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
                        maxLines: 1,
                        style: resp
                            ? Theme.of(context).textTheme.headline2!.copyWith(
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.w700)
                            : Theme.of(context).textTheme.headline2!.copyWith(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18,
                                fontWeight: FontWeight.w900)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        maxLines: 2,
                        resp
                            ? body.runes.length > 50
                                ? '${body.substring(0, 50)}...'
                                : body
                            : body,
                        style: resp
                            ? Theme.of(context).textTheme.headline6!.copyWith(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.w600,
                                fontSize: 16)
                            : Theme.of(context).textTheme.headline6!.copyWith(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
