
import 'package:booklyapp/core/utils/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            onPressed: (){
              GoRouter.of(context).push(AppRouters.kSearchView);
            },
            icon: Image.asset(rightIconAsset)
        )
      ],
    );
  }
}
