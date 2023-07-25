
import 'package:flutter/material.dart';

class CustomListBooksItem extends StatelessWidget {
  const CustomListBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(image: AssetImage('assets/images/book.png'), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
