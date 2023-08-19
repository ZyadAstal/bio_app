import 'package:course_2/core/resources/manager_font_sizes.dart';
import 'package:course_2/core/resources/manager_font_weights.dart';
import 'package:course_2/core/resources/manager_string.dart';
import 'package:course_2/core/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print('Hello');
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, Routes.bioScreen);

    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(ManagerString.bioApp, style: TextStyle(fontSize: ManagerFontSizes.s24, fontWeight: ManagerFontWeight.w400),),
      ),
    );
  }
  @override
  void dispose() {
    print('goodBye');
    super.dispose();
  }
}