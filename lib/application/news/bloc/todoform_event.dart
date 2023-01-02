part of 'todoform_bloc.dart';

@immutable
abstract class NewsformEvent {}

class NewsformEventInitial extends NewsformEvent {
  final News? news;
  NewsformEventInitial({required this.news});
}

class SafePressedEvent extends NewsformEvent {
  final String? title;
  final String? body;
  final String? desc;
  final String? link;
  final String? src;
  final String? image;

  SafePressedEvent({
    required this.title,
    required this.body,
    required this.desc,
    required this.link,
    required this.src,
    required this.image,
  });
}
