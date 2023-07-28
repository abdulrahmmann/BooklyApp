import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/model/BookModel.dart';
import 'package:booklyapp/features/home/data/repository/home_repository.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepository) : super(FeaturedBooksInitial());

  // create methods for fetch featured books :
  final HomeRepository homeRepository;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepository.fetchFeaturedBooks();
    result.fold(
            (Failure) => emit(FeaturedBooksFailure(Failure.errorMessage)),
            (books) => emit(FeaturedBooksSuccess(books))
    );
  }

}
