import 'package:course_2/core/resources/manager_font_sizes.dart';
import 'package:course_2/core/resources/manager_font_weights.dart';
import 'package:course_2/core/resources/manager_string.dart';
import 'package:flutter/material.dart';

class CardUser extends StatelessWidget {
  String? name;
  String? jopDesc;
  CardUser({super.key,
    this.name,
    this.jopDesc,
  });



  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.person),
        title: Text(name ?? ManagerString.userName,
          style: const TextStyle(
            fontSize: ManagerFontSizes.s20,
            fontWeight: ManagerFontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Georama',

          ),
        ),
        subtitle: Text(jopDesc ?? ManagerString.workDesc,
          style: const TextStyle(
              fontSize: ManagerFontSizes.s20,
              fontWeight: ManagerFontWeight.w400,
              fontStyle: FontStyle.italic,
              fontFamily: 'Georama',
              color: Colors.grey

          ),
        ),
        trailing: IconButton(onPressed: () {  }, icon: const Icon(Icons.share),),
      ),
    );


  }
}
