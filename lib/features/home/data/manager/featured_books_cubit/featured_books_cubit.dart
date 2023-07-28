import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/model/BookModel.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
