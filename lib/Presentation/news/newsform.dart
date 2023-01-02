import 'package:button_future/Presentation/news/newsText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/news/bloc/todoform_bloc.dart';
import '../../domain/enitys/news/news.dart';
import '../../injecton.dart';
import '../routes/router.gr.dart';
import '../userpage/settings/widgets/dialog.dart';

class NewsForm extends StatelessWidget {
  final News? news;
  const NewsForm({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<NewsformBloc>()..add(NewsformEventInitial(news: news)),
      child: BlocConsumer<NewsformBloc, NewsformState>(
        listenWhen: (p, c) =>
            p.failureOrSuccessOption != c.failureOrSuccessOption,
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
              () {},
              (eitherFailureOrSuccess) => eitherFailureOrSuccess.fold(
                  (failure) => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("failure"),
                          backgroundColor: Colors.redAccent)),
                  (_) => Navigator.of(context).popUntil((route) =>
                      route.settings.name == LandingPageRoute.name)));
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(news == null ? "Create Todo" : "Edit Todo"),
            ),
            body: Stack(
              children: [
                const NewsText(),
                SafeInProgressOverlay(isSaving: state.isSaving)
              ],
            ),
          );
        },
      ),
    );
  }
}
