// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/views/register_page.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_password_field.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';

  // ---------------------------------------------------------

  var f_name_person = TextEditingController();
  var l_name_person = TextEditingController();
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
      
          children: [
           const SizedBox(height: 40,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child:const Text(
                'Full Name',
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
                hintText: "Enter Your Name" ,
                keyboardType: TextInputType.emailAddress,
                controller: f_name_person ,
                ),
            ),
          const  SizedBox(height: 30,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child:const Text(
                'Username',
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
                hintText: "Enter Your Username" ,
                keyboardType: TextInputType.emailAddress,
                controller: username,
                ),
            ),
           const  SizedBox(height: 30,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child:const Text(
                'Email',
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
                hintText: "Enter Your Email" ,
                keyboardType: TextInputType.emailAddress,
                controller: user_email,
                ),
            ),

           const SizedBox(height: 30,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child:const Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                  
                ),
              ),
            ),
         const   SizedBox(height: 10,),
            Container(
              height: 50,
              decoration:const BoxDecoration(
                color:  lightWhite,
              ),
              child: CustomTextField(
                hintText: "Enter Your Phone Number" ,
                keyboardType: TextInputType.emailAddress,
                controller:phone_num ,
                ),
            ),
          const  SizedBox(height: 30,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child:const Text(
                'Change Password',
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
                  hintText: 'Retype Password',
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
         const   SizedBox(height: 50,),
            customButton(
              text: "Save",
              font_size: 20,
              onTap: () {
                setState(() {
                  
                });
                print(frist_name);
                print(email);
                print(phone_num.text);
                print(passwordController_log.text);
                print("The name is :  $yyy");
              
                            },
              ),
            
          ],
        ),
      ),
    );
  }
}