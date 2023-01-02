part of 'observe_bloc.dart';

@immutable
abstract class ObserveState {}

class ObserveInitial extends ObserveState {}

class ObserveLoading extends ObserveState {}

class ObserverSuccess extends ObserveState {
  final List<Todo> todos;
  ObserverSuccess({required this.todos});
}

class ObserveFailure extends ObserveState {
  final TodoFailure todoFailure;

  ObserveFailure({required this.todoFailure});
}
