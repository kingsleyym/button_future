part of 'observe_bloc.dart';

@immutable
abstract class ObserverEvent {}

class ObserverAll extends ObserverEvent {}

class NewsUpdatedEvent extends ObserverEvent {
  final Either<NewsFailure, List<News>> failureOrNews;
  NewsUpdatedEvent({
    required this.failureOrNews,
  });
}
