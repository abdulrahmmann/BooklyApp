import 'package:booklyapp/core/utils/app_routers.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/features/home/data/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/features/home/data/manager/newest_books_cubit/newest_book_cubit.dart';
import 'package:booklyapp/features/home/data/repository/home_repository_implementation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/constants.dart';

void main() {
  setUpServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
              getIt.get<HomeRepositoryImplementation>()
            )..fetchFeaturedBooks(),
        ),
        BlocProvider(
            create: (context) => NewestBookCubit(
              getIt.get<HomeRepositoryImplementation>()
            )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData
              .dark()
              .textTheme),
        ),
      ),
    );
  }
}

