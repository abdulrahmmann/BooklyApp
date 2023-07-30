
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.only(top: 44, right: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomSearchTextField(),
                  const SizedBox(height: 40),
                  Text(
                    'search results',
                    style: Styles.textStyle18.copyWith(
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const SearchResultListView(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Opacity(
          opacity: 0.8,
          child: IconButton(
            icon: Image.asset(AssetsData.appbarSearchIcon),
            onPressed: () {},
          ),
        ),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'search here...',
      ),
      cursorColor: Colors.white,
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(width: 1, color: Colors.white)
      );
  }
}


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, i) => const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text('comment at now!'),
            // child: BookListViewItem(bookModel: ),
          )),
    );
  }
}

