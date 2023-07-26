import 'package:booklyapp/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/constants.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SplashView(),
    );
  }
}

/*
final customTheme = ThemeData(
  fontFamily: 'YourDesiredFontFamily', // Replace with the font family you want to use
  brightness: Brightness.dark, // Set the brightness to dark to enable dark mode
  scaffoldBackgroundColor: Colors.grey[900], // Set the background color for the scaffold
  // Add more theme properties here if needed
 */