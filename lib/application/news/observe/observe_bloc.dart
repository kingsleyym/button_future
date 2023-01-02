import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:button_future/domain/repository/news_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../core/failures/news_Failure.dart';
import '../../../domain/enitys/news/news.dart';

part 'observe_event.dart';
part 'observe_state.dart';

class ObserverBloc extends Bloc<ObserverEvent, ObserverState> {
  final NewsRepository newsRepository;

  StreamSubscription<Either<NewsFailure, List<News>>>? _newsStreamSub;

  ObserverBloc({required this.newsRepository}) : super(ObserverInitial()) {
    on<ObserverEvent>((event, emit) async {
      emit(ObserverLoading());

      await _newsStreamSub?.cancel();

      _newsStreamSub = newsRepository.watchAll().listen((failureOrNews) =>
          add(NewsUpdatedEvent(failureOrNews: failureOrNews)));
    });
    on<NewsUpdatedEvent>((event, emit) {
      event.failureOrNews.fold(
          (failures) => emit(ObserverFailure(newsFailure: failures)),
          (news) => emit(ObserverSuccses(news)));
    });
  }

  @override
  Future<void> close() async {
    await _newsStreamSub?.cancel();
    print("Stream Todoend");
    return super.close();
  }
}
