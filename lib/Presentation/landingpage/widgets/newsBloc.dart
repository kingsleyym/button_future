import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../application/news/observe/observe_bloc.dart';
import '../../Widgets/page_card.dart';
import '../../routes/router.gr.dart';

class NewsBlocList extends StatelessWidget {
  const NewsBlocList({
    Key? key,
    required this.themeColor,
  }) : super(key: key);

  final ColorScheme themeColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ObserverBloc, ObserverState>(
      builder: (context, state) {
        if (state is ObserverInitial) {
          return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Shimmer.fromColors(
                  baseColor: themeColor.primary,
                  highlightColor: themeColor.onPrimary,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  )));
        } else if (state is ObserverLoading) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Shimmer.fromColors(
              baseColor: themeColor.secondary,
              highlightColor: themeColor.onPrimary,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          );
        } else if (state is ObserverSuccses) {
          return Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.news.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: InkWell(
                    onDoubleTap: () {
                      AutoRouter.of(context).push(NewsFormRoute(news: null));
                    },
                    onTap: () {
                      AutoRouter.of(context)
                          .push(NewsDetailRoute(news: state.news[index]));
                      print("halll");
                    },
                    child: Hero(
                      tag: state.news[index].src,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: PageCard(
                              image: state.news[index].image,
                              body: state.news[index].body,
                              title: state.news[index].src,
                              resp: false)),
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is ObserverFailure) {
          return const Center(child: Text("Failure"));
        }
        return Container();
      },
    );
  }
}
