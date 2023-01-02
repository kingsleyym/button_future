part of 'todoform_bloc.dart';

class NewsformState {
  final News news;
  final bool showErrorMessages;
  final bool isEditing;
  final bool isSaving;
  final Option<Either<NewsFailure, Unit>> failureOrSuccessOption;

  NewsformState({
    required this.news,
    required this.showErrorMessages,
    required this.isEditing,
    required this.isSaving,
    required this.failureOrSuccessOption,
  });

  factory NewsformState.initial() => NewsformState(
        news: News.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        failureOrSuccessOption: none(),
      );

  NewsformState copyWith({
    News? news,
    bool? showErrorMessages,
    bool? isEditing,
    bool? isSaving,
    Option<Either<NewsFailure, Unit>>? failureOrSuccessOption,
  }) {
    return NewsformState(
      news: news ?? this.news,
      showErrorMessages: showErrorMessages ?? this.showErrorMessages,
      isEditing: isEditing ?? this.isEditing,
      isSaving: isSaving ?? this.isSaving,
      failureOrSuccessOption:
          failureOrSuccessOption ?? this.failureOrSuccessOption,
    );
  }
}
