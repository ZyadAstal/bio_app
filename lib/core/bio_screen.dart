import 'package:course_2/core/resources/manager_color.dart';
import 'package:course_2/core/resources/manager_font_sizes.dart';
import 'package:course_2/core/resources/manager_font_weights.dart';
import 'package:course_2/core/resources/manager_string.dart';
import 'package:course_2/core/routes.dart';
import 'package:course_2/core/widgets/card_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(ManagerString.bioApp),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions:[ IconButton(icon: const Icon(Icons.info),
          onPressed: (){
            Navigator.pushNamed(context, Routes.aboutScreen);
          },
        ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        // width: double.infinity,
        // height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient:LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
            ManagerColor.secondaryColor,
            ManagerColor.primaryColor,

          ])
        ),
         child:  Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const CircleAvatar(
               radius: 100,
               backgroundImage: AssetImage('assets/images/profile.jpg'),

             ),
              const SizedBox(height: 20,),
              const Text(ManagerString.userName,
                style: TextStyle(
                    fontSize: ManagerFontSizes.s24,
                    fontWeight: ManagerFontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Georama',
                    color: Colors.white

                ),
              ),
             const SizedBox(height: 20,),
             const Text(ManagerString.flutterCourse,
               style: TextStyle(
                 fontSize: ManagerFontSizes.s24,
                 fontWeight: ManagerFontWeight.w400,
                 fontStyle: FontStyle.italic,
                 fontFamily: 'Georama',
                 color: Colors.white

               ),
             ),
             const SizedBox(height: 20,),
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.red,
                 fixedSize: const Size(200,70),

               ),
                 onPressed: (){
                   print('Hello');
                 },
                 child: const Text('Click Here', style: TextStyle(color: Colors.white, fontSize: ManagerFontSizes.s20),),
             ),
             const Divider(
               indent: 60,
               endIndent: 60,
               color: Colors.white70,
             ),
             CardUser(),
             CardUser(name:'Abed', jopDesc:'Asp.net Developer'),
             CardUser(name:'Mohammed', jopDesc:'Laravel Developer'),

           ],
         ),
      ),
    );
  }
}
