// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../domain/enitys/news/news.dart';
import '../Widgets/page_card.dart';

class NewsDetail extends StatelessWidget {
  final News? news;
  const NewsDetail({
    Key? key,
    this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            elevation: 0,
            primary: true,
            backgroundColor: Colors.transparent,
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios_new),
              )
            ]),
        body: Column(
          children: [
            Hero(
              tag: news!.src,
              child: Container(
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(2, 2),
                      ),
                    ],
                    color: Colors.transparent),
                height: size.height * 0.38,
                child:
                    PageView(physics: const BouncingScrollPhysics(), children: [
                  PageCard(
                    resp: true,
                    title: news!.title,
                    body: news!.body,
                    image: news!.image,
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.person,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(news!.src, style: Theme.of(context).textTheme.headline6),
                  const Spacer(),
                  Text(news!.src),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.av_timer),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 2,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            news!.title,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(fontWeight: FontWeight.w900),
                            maxLines: 2,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            news!.link,
                            style: Theme.of(context).textTheme.bodyText1,
                            maxLines: 2,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(news!.body,
                                textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            child: Text(news!.desc,
                                style: Theme.of(context).textTheme.bodyText1),
                            onTap: () => launchUrlString(news!.link),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ));
  }
}
