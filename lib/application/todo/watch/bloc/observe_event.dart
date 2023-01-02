part of 'observe_bloc.dart';

@immutable
abstract class ObserveEvent {}

class ObserveAll extends ObserveEvent {}

class TodosUpdatedEvent extends ObserveEvent {
  final Either<TodoFailure, List<Todo>> failureOrTodos;
  TodosUpdatedEvent({
    required this.failureOrTodos,
  });
}
