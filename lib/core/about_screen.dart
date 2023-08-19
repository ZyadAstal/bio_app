import 'package:course_2/core/resources/manager_string.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    // if(modalRoute != null && modalRoute )
    return Scaffold(
      appBar: AppBar(
        title: Text(ManagerString.about),
        backgroundColor: Colors.transparent,
        elevation: 0,


      ),
      body: Container(),
    );
  }
}
