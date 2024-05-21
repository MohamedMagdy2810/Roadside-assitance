import 'package:flutter/material.dart';
import 'package:roadside_assitance/classes/shared_preferences.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';


class settingsView extends StatelessWidget {
  const settingsView({super.key});

  @override
  Widget build(BuildContext context) {
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
            onTap: ()async{
            await  TokenManager.removeToken();
              Navigator.pushNamedAndRemoveUntil(context, LogInPage.Id, (route) => false);
            },
            ),
        
        ],
        ),
          );
  }
}