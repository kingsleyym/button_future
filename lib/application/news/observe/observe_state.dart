part of 'observe_bloc.dart';

@immutable
abstract class ObserverState {}

class ObserverInitial extends ObserverState {}

class ObserverLoading extends ObserverState {}

class ObserverSuccses extends ObserverState {
  final List<News> news;

  ObserverSuccses(this.news);
}

class ObserverFailure extends ObserverState {
  final NewsFailure newsFailure;

  ObserverFailure({required this.newsFailure});
}
