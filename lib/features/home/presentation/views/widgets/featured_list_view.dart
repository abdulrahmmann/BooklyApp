import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/data/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .3,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) =>
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: CustomListBooksItem(),
                )
            ),
          );
        }else if (state is FeaturedBooksFailure) {
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
