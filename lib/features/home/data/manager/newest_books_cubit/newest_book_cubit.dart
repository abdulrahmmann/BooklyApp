import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/model/BookModel.dart';
import 'package:booklyapp/features/home/data/repository/home_repository.dart';
part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepository) : super(NewestBookInitial());

  // create methods for fetch newest books :
  final HomeRepository homeRepository;
  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepository.fetchNewestBooks();

    result.fold(
            (Failure) => emit(NewestBookFailure(Failure.errorMessage)),
            (books) => emit(NewestBookSuccess(books))
    );
  }

}
