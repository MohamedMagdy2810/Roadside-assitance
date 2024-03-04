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

  var name_person = TextEditingController();
  var phone_num = TextEditingController();


  // ---------------------------------------

class profileView extends StatefulWidget {
  @override
  State<profileView> createState() => _profileViewState();
}

class _profileViewState extends State<profileView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
      
          children: [
            SizedBox(height: 40,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child: Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                  
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color:  lightWhite,
              ),
              child: CustomTextField(
                hintText: "Enter Your Name" ,
                keyboardType: TextInputType.emailAddress,
                controller: name_person,
                ),
            ),
            SizedBox(height: 30,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                  
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color:  lightWhite,
              ),
              child: CustomTextField(
                hintText: "Enter Your Email" ,
                keyboardType: TextInputType.emailAddress,
                controller: user_email,
                ),
            ),
            SizedBox(height: 30,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child: Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                  
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color:  lightWhite,
              ),
              child: CustomTextField(
                hintText: "Enter Your Phone Number" ,
                keyboardType: TextInputType.emailAddress,
                controller:phone_num ,
                ),
            ),
            SizedBox(height: 30,),
            Container(
              alignment:AlignmentDirectional.topStart,
              child: Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold
                  
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              decoration: BoxDecoration(
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
            SizedBox(height: 50,),
            customButton(
              text: "Save",
              font_size: 20,
              onTap: () {
                setState(() {
                  
                });
                print(name);
                print(email);
                print(phone_num.text);
                print(passwordController_log.text);
              },
              ),
            
          ],
        ),
      ),
    );
  }
}