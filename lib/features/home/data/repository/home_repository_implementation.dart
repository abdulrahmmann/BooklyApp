
import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/features/home/data/model/BookModel.dart';
import 'package:booklyapp/features/home/data/repository/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImplementation extends HomeRepository {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}