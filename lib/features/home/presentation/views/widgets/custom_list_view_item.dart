
import 'package:flutter/material.dart';

class CustomListBooksItem extends StatelessWidget {
  const CustomListBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('assets/images/Book 1 Hightligh.png'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}