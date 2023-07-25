import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 44),
      child: Column(
        children: [
          // custom app bar.
          CustomAppBar(
            leftIconAsset: AssetsData.appbarLogo,
            rightIconAsset: AssetsData.appbarSearchIcon,
          ),
          SizedBox(height: 42),

          // list of books -> ListView Horizontally.
          FeaturedListView(),
        ],
      ),
    );
  }
}

















