
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.leftIconAsset, required this.rightIconAsset});

  final String leftIconAsset;
  final String rightIconAsset;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(leftIconAsset),
        IconButton(
            onPressed: (){},
            icon: Image.asset(rightIconAsset)
        )
      ],
    );
  }
}
