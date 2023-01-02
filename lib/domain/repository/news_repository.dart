import 'package:dartz/dartz.dart';

import '../../core/failures/news_Failure.dart';
import '../enitys/news/news.dart';

abstract class NewsRepository {
  Stream<Either<NewsFailure, List<News>>> watchAll();

  Future<Either<NewsFailure, Unit>> create(News news);

  Future<Either<NewsFailure, Unit>> update(News news);

  Future<Either<NewsFailure, Unit>> delete(News news);
}
