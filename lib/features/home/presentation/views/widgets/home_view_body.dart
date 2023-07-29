import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // custom app bar.
                SizedBox(height: 44,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(
                    leftIconAsset: AssetsData.appbarLogo,
                    rightIconAsset: AssetsData.appbarSearchIcon,
                  ),
                ),
                SizedBox(height: 32),
                // list of books -> ListView Horizontally.
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: FeaturedBooksListView(),
                ),
                SizedBox(height: 40),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Newest Books',
                    style: Styles.textStyle18,
                  ),
                ),

                SizedBox(height: 20),
              ],
            )),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}

