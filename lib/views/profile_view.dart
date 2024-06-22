// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/generated/l10n.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/views/register_page.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_password_field.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';

  // ---------------------------------------------------------

  var f_name_person = TextEditingController();
  var l_name_person = TextEditingController();
  var f_name_provider = TextEditingController();
  var l_name_provider = TextEditingController();
  
  var yyy = "${f_name_person.text} ${l_name_person.text}";
  var phone_num = TextEditingController();
 


  // ---------------------------------------

class profileView extends StatefulWidget {
  @override
  State<profileView> createState() => _profileViewState();
}

class _profileViewState extends State<profileView> {
  final List<TextEditingController>ccc = [f_name_person , l_name_person];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
              
          children: [
           const SizedBox(height: 20,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child: Text(
              S.of(context).nameProfile,
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                  
                ),
              ),
            ),
          const  SizedBox(height: 10,),
            Container(
              height: 50,
              decoration:const BoxDecoration(
                color:  lightWhite,
              ),
              child: CustomTextField(
                hintText: S.of(context).enterName ,
                keyboardType: TextInputType.emailAddress,
                controller: f_name_person ,
                ),
            ),
            const  SizedBox(height: 10,),
          // const  SizedBox(height: 30,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child: Text(
                S.of(context).usernameProfile,
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                  
                ),
              ),
            ),
          const  SizedBox(height: 10,),
            Container(
              height: 50,
              decoration:const BoxDecoration(
                color:  lightWhite,
              ),
              child: CustomTextField(
                hintText: S.of(context).enterUser ,
                keyboardType: TextInputType.emailAddress,
                controller: username,
                ),
            ),
          //  const  SizedBox(height: 30,),
          const  SizedBox(height: 10,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child: Text(
                S.of(context).emailProfile,
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                  
                ),
              ),
            ),
          // const  SizedBox(height: 10,),
          const  SizedBox(height: 10,),
            Container(
              height: 50,
              decoration:const BoxDecoration(
                color:  lightWhite,
              ),
              child: CustomTextField(
                hintText: S.of(context).enterEmail,
                keyboardType: TextInputType.emailAddress,
                controller: user_email,
                ),
            ),
            const  SizedBox(height: 10,),
          //  const SizedBox(height: 30,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child: Text(
                S.of(context).phoneProfile,
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                  
                ),
              ),
            ),
            const  SizedBox(height: 10,),
        //  const   SizedBox(height: 10,),
            Container(
              height: 50,
              decoration:const BoxDecoration(
                color:  lightWhite,
              ),
              child: CustomTextField(
                hintText:S.of(context).enterPhone ,
                keyboardType: TextInputType.emailAddress,
                controller:phone_num ,
                ),
            ),
            const  SizedBox(height: 10,),
          // const  SizedBox(height: 30,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child: Text(
                S.of(context).passProfile,
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                  
                ),
              ),
            ),
          const  SizedBox(height: 10,),
            Container(
              height: 50,
              decoration:const BoxDecoration(
                color:  lightWhite,
              ),
              child: CustomPasswordField(
                  isPassword: isTrue,
                  hintText: S.of(context).enterPass,
                   suffix:isTrue ? FontAwesomeIcons.solidEyeSlash : FontAwesomeIcons.solidEye,
                  icon_colol:isTrue? lightGreen.withOpacity(.45) :Colors.lightBlue.withOpacity(.45),
                  controller: passwordController_log,
                  suffixPressed:() {
                    setState(() {
                      isTrue=! isTrue;
                    });
                  }, 
                ),
            ),
            const  SizedBox(height: 20,),
        //  const   SizedBox(height: 50,),
            customButton(
              text: S.of(context).saveProfile,
              font_size: 20,
              onTap: () {
                setState(() {
                  
                });
              
              
                            },
              ),
            
          ],
        ),
      ),
    );
  }
}