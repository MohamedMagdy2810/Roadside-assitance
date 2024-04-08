import 'package:flutter/material.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';


class settingsView extends StatelessWidget {
  const settingsView({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customButton(
            text: "عربي",
            font_size: 25,
            onTap: (){},
            ),
          SizedBox(height: 70,),
          customButton(
            text: "English",
            font_size: 25,
            onTap: (){},
            ),
          SizedBox(height: 70,),
          customButton(
            text: "Log Out",
            font_size: 25,
            onTap: (){
              Navigator.of(context).pop();
            },
            ),
        ],),
=======
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customButton(
          text: "عربي",
          font_size: 25,
          onTap: (){},
          ),
      const  SizedBox(height: 70,),
        customButton(
          text: "English",
          font_size: 25,
          onTap: (){},
          ),
      const  SizedBox(height: 70,),
        customButton(
          text: "Log Out",
          font_size: 25,
          onTap: (){
            Navigator.of(context).pop();
          },
          ),
      ],
>>>>>>> 4e503543fab8a8ccb6067cbeaa88d8521f8e07ad
    );
  }
}