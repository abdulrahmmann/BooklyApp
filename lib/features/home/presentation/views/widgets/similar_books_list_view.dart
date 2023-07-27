
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, i) {
          return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: SimilarItemListView()
          );
        }
    );
  }
}

class SimilarItemListView extends StatelessWidget {
  const SimilarItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(image: AssetImage('assets/images/book.png'), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
