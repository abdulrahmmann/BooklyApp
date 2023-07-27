import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_detail_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 44, right: 30, left: 30),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(
              height: 33.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .22),
              child: const CustomListBooksItem(),
            ),
            const SizedBox(height: 40),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 8,
            ),
            Text('Rudyard Kipling',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle18.copyWith(
                    color: const Color(0xffffffff).withOpacity(.7),
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic)),
            const SizedBox(
              height: 14,
            ),
            const BookRating(mainAxisAlignment: MainAxisAlignment.center),
            const SizedBox(
              height: 37,
            ),
            const BookActions(),
            const SizedBox(height: 49),
            Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}


