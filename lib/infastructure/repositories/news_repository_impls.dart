import 'package:button_future/domain/enitys/news/news.dart';
import 'package:button_future/core/failures/news_Failure.dart';

import 'package:button_future/infastructure/models/news_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repository/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final FirebaseFirestore firestore;

  NewsRepositoryImpl({required this.firestore});

  @override
  Stream<Either<NewsFailure, List<News>>> watchAll() async* {
    yield* firestore
        .collection("news")
        .orderBy("serverTimeStamp", descending: true)
        .snapshots()
        .map((snapshot) {
      print("dfjkjd"); // add this line to print the snapshot
      return right<NewsFailure, List<News>>(snapshot.docs
          .map((doc) => NewsModel.fromFirestore(doc, doc.id).toDomain())
          .toList());
    }).handleError((e) {
      if (e is FirebaseException) {
        if (e.code.contains('PERMISSION_DENIED')) {
          return left(InsufficientPermisssons());
        } else {
          return left(UnexpectedFailure());
        }
      } else {
        return left(UnexpectedFailure());
      }
    });

    print("end");
  }

  @override
  Future<Either<NewsFailure, Unit>> create(News news) async {
    try {
      final userDoc = firestore.collection("news");

      final todoModel = NewsModel.fromDomain(news);
      await userDoc.doc(todoModel.id).set(todoModel.toMap());
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
  Future<Either<NewsFailure, Unit>> delete(News news) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<NewsFailure, Unit>> update(News news) async {
    // TODO: implement update
    throw UnimplementedError();
  }
}
