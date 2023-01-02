import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:meta/meta.dart';

import 'package:button_future/domain/repository/todo_repository.dart';

import '../../../../core/failures/todo_failure.dart';
import '../../../../domain/enitys/todo/todo.dart';

part 'observe_event.dart';
part 'observe_state.dart';

class ObserveBloc extends Bloc<ObserveEvent, ObserveState> {
  final TodoRepository todoRepository;

  StreamSubscription<Either<TodoFailure, List<Todo>>>? _todoStreamSub;

  ObserveBloc({required this.todoRepository}) : super(ObserveInitial()) {
    on<ObserveAll>((event, emit) async {
      emit(ObserveLoading());

      await _todoStreamSub?.cancel();
      _todoStreamSub = todoRepository.watchAll().listen((failureOrTodos) =>
          add(TodosUpdatedEvent(failureOrTodos: failureOrTodos)));
    });

    on<TodosUpdatedEvent>((event, emit) {
      event.failureOrTodos.fold(
          (failures) => emit(ObserveFailure(todoFailure: failures)),
          (todos) => emit(ObserverSuccess(todos: todos)));
    });
  }

  @override
  Future<void> close() async {
    await _todoStreamSub?.cancel();
    return super.close();
  }
}
