
import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/features/home/data/model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {

  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

}