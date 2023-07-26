import 'package:booklyapp/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 44, right: 30, left: 30),
        child: Column(
          children: [

            CustomBookDetailsAppBar(),



          ],
        ),
      ),
    );
  }
}

