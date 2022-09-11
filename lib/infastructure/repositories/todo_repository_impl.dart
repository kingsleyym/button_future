import 'package:button_future/domain/enitys/todo/todo.dart';
import 'package:button_future/core/failures/todo_failure.dart';
import 'package:button_future/domain/repository/todo_repository.dart';
import 'package:button_future/infastructure/extensions/firebase_helpers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';

class TodoRepositoryImpl implements TodoRepository {
  final FirebaseFirestore firestore;

  TodoRepositoryImpl({required this.firestore});

  @override
  Future<Either<TodoFailure, Unit>> create(Todo todo) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<TodoFailure, Unit>> delete(Todo todo) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<TodoFailure, Unit>> update(Todo todo) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<TodoFailure, List<Todo>>> watchAll() async* {
    final userDoc = await firestore.userDocument();

    // yield* userDoc.todoCollection.snapshots().map((event) => "null")
  }
}
