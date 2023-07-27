import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_detail_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(top: 44, right: 30, left: 30),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  SizedBox(
                    height: 22.2,
                  ),
                  BookDetailsSection(),
                  Expanded(child: SizedBox(height: 39)),
                  SimilarBooksSection(),
                  SizedBox(height: 16,)
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}





