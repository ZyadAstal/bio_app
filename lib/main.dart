import 'package:course_2/core/about_screen.dart';
import 'package:course_2/core/bio_screen.dart';
import 'package:course_2/core/routes.dart';
import 'package:course_2/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          centerTitle: true,
        )
      ),
      initialRoute: Routes.spalshScreen,
      routes: {
        Routes.spalshScreen :(context)=> SplashScreen(),
        Routes.bioScreen :(context)=> const BioScreen(),
        Routes.aboutScreen :(context)=> const AboutScreen(),

      },
    );
  }
}


