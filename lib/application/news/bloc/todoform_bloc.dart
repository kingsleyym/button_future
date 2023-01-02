import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/failures/news_Failure.dart';
import '../../../domain/enitys/news/news.dart';
import '../../../domain/repository/news_repository.dart';

part 'todoform_event.dart';
part 'todoform_state.dart';

class NewsformBloc extends Bloc<NewsformEvent, NewsformState> {
  final NewsRepository newsRepository;
  NewsformBloc({required this.newsRepository})
      : super(NewsformState.initial()) {
    on<NewsformEventInitial>((event, emit) {
      if (event.news != null) {
        emit(state.copyWith(
          news: event.news,
          isEditing: true,
        ));
      } else {
        emit(state);
      }
    });

    on<SafePressedEvent>((event, emit) async {
      Either<NewsFailure, Unit>? failureOrSuccess;
      if (event.title != null &&
          event.body != null &&
          event.desc != null &&
          event.link != null &&
          event.src != null &&
          event.image != null) {
        final News editedNews = state.news.copyWith(
          title: event.title,
          body: event.body,
          desc: event.desc,
          link: event.link,
          src: event.src,
          image: event.image,
        );
        if (state.isEditing) {
          failureOrSuccess = await newsRepository.update(editedNews);
        } else {
          failureOrSuccess = await newsRepository.create(editedNews);
        }
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          failureOrSuccessOption: optionOf(failureOrSuccess)));
    });
  }
}
