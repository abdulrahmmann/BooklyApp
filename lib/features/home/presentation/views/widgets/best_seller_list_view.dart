import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/data/manager/newest_books_cubit/newest_book_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: state.books.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, i) =>
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel: state.books[i]),
              ));
        }else if (state is NewestBookFailure) {
          return CustomErrorTextMessage(errorMessage: state.errorMessage);
        }else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class CustomErrorTextMessage extends StatelessWidget {
  const CustomErrorTextMessage({super.key, required this.errorMessage});

  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: Styles.textStyle20,
    );
  }
}

