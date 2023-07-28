import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/features/home/data/model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}


// steps for make a request to api :
// 1 -> create repository : contains abstract methods.
// 2 -> create class extends repository : implement abstract methods.
// 3 -> create api service class : contains base url, dio, api methods (get, put, post, delete).
// 4 -> create failure class : handle rest api failures.
