import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // custom app bar.
          CustomAppBar(
            leftIconAsset: AssetsData.appbarLogo,
            rightIconAsset: AssetsData.appbarSearchIcon,
          ),
          SizedBox(height: 42),

          // list of books -> ListView Horizontally.
          FeaturedListView(),
          SizedBox(height: 40),

          Text('Best Seller', style: Styles.textStyle18,),

          SizedBox(height: 20),
          BestSellerItem(),

        ],
      ),
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
              aspectRatio:2.6/4,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage('assets/images/book.png'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: 'Playfair Display'
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    const BookRating(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6.3,),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 9,),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.normal,
              color: const Color(0xff707070)
          ),
        ),
      ],
    );
  }
}

