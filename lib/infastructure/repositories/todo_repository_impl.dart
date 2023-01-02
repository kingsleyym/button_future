import 'package:button_future/domain/enitys/todo/todo.dart';
import 'package:button_future/core/failures/todo_failure.dart';
import 'package:button_future/domain/repository/todo_repository.dart';
import 'package:button_future/infastructure/extensions/firebase_helpers.dart';
import 'package:button_future/infastructure/models/todo_models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class TodoRepositoryImpl implements TodoRepository {
  final FirebaseFirestore firestore;

  TodoRepositoryImpl({required this.firestore});

  @override
  Future<Either<TodoFailure, Unit>> create(Todo todo) async {
    try {
      final userDoc = await firestore.userDocument();

      final todoModel = TodoModel.fromDomain(todo);
      await userDoc.todoCollection.doc(todoModel.id).set(todoModel.toMap());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        return left(InsufficientPermisssons());
      } else {
        return left(UnexpectedFailure());
      }
    }
  }

  @override
  Future<Either<TodoFailure, Unit>> delete(Todo todo) async {
    try {
      final userDoc = await firestore.userDocument();
      final todoModel = TodoModel.fromDomain(todo);

      await userDoc.todoCollection.doc(todoModel.id).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        return left(InsufficientPermisssons());
      } else {
        return left(UnexpectedFailure());
      }
    }
  }

  @override
  Future<Either<TodoFailure, Unit>> update(Todo todo) async {
    try {
      final userDoc = await firestore.userDocument();
      final todoModel = TodoModel.fromDomain(todo);

      await userDoc.todoCollection.doc(todoModel.id).update(todoModel.toMap());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('PERMISSION_DENIED')) {
        return left(InsufficientPermisssons());
      } else {
        return left(UnexpectedFailure());
      }
    }
  }

  @override
  Stream<Either<TodoFailure, List<Todo>>> watchAll() async* {
    final userDoc = await firestore.userDocument();

    yield* userDoc.todoCollection
        .snapshots()
        .map((snapshot) => right<TodoFailure, List<Todo>>(snapshot.docs
            .map((doc) => TodoModel.fromFirestore(doc).toDomain())
            .toList()))

        // error handling (left side)
        .handleError((e) {
      if (e is FirebaseException) {
        if (e.code.contains('permission-denied') ||
            e.code.contains("PERMISSION_DENIED")) {
          return left(InsufficientPermisssons());
        } else {
          return left(UnexpectedFailure());
        }
      } else {
        return left(UnexpectedFailure());
      }
    });
  }
}
