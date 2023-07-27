
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .22),
          child: const CustomListBooksItem(),
        ),
        const SizedBox(height: 30),
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
          height: 22,
        ),
        const BookActions(),
      ],
    );
  }
}
