import 'package:dartz/dartz.dart';

import '../../core/failures/todo_failure.dart';
import '../enitys/todo/todo.dart';

abstract class TodoRepository {
  Stream<Either<TodoFailure, List<Todo>>> watchAll();

  Future<Either<TodoFailure, Unit>> create(Todo todo);

  Future<Either<TodoFailure, Unit>> update(Todo todo);

  Future<Either<TodoFailure, Unit>> delete(Todo todo);
}
