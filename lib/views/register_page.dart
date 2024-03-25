import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/views/profile_view.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';

import 'package:roadside_assitance/widgets/custom_password_field.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';
final reg_FormKey = GlobalKey<FormState>();  
String? frist_name;
String? last_name;
String? email;
String? correctPassword;
var user_email =TextEditingController() ;
class registerPage extends StatefulWidget {
  registerPage({
    super.key,
  });
  static String Id = 'registerPage';

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {

var passwordController_reg = TextEditingController();
var passwordController_reg_two = TextEditingController();

bool isTrue = true;
bool isTrue_two = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // backgroundColor: lightWhite,
      // ),
      backgroundColor: lightWhite,
      body: Form(
        key: reg_FormKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 28,right: 28,top: 80),
            child: Column(
              children: [
              const Text(
                'Join Us!',
                style: TextStyle(
                    color: Color(0xff275217),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 64,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: f_name_person,
                      hintText: 'First Name',
                      keyboardType: TextInputType.text,
                      validation: (value) {
                        frist_name = value.toString();
                        if (value == null || value.isEmpty) {
                          return "Enter your first Name";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: CustomTextField(
                      controller: l_name_person,
                      hintText: 'Last Name',
                      keyboardType: TextInputType.text,
                      validation: (value) {
                        frist_name = value.toString();
                        if (value == null || value.isEmpty) {
                          return "Enter your Last Name";
                        }
                        return null;
                      },
                    ),
                  ),
                
                ],
              ),
              
              SizedBox(
                height: 24,
              ),
              CustomTextField(
                controller:user_email,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your Email',
                validation: (value) {
                  email = value.toString();
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Email";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomPasswordField(
                isPassword: isTrue,
                hintText: 'Password',
                validation: (value) {
                  correctPassword = value;
                  if (value == null || value.isEmpty) {
                    return "please enter your Password";
                  }
                  return null;
                },
                suffix:isTrue ? FontAwesomeIcons.solidEyeSlash : FontAwesomeIcons.solidEye,
                icon_colol:isTrue? lightGreen.withOpacity(.45) :Colors.lightBlue.withOpacity(.45),
                controller: passwordController_reg,
                suffixPressed:() {
                  setState(() {
                    isTrue=! isTrue;
                  });
                }, 
              ),
              const SizedBox(
                height: 24,
              ),
              CustomPasswordField(
                isPassword: isTrue_two,
                hintText: 'Retype Password',
                validation: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter your Password";
                  } else if (value != correctPassword) {
                    return 'Password incorrect';
                  }
                  return null;
                },
                 suffix:isTrue_two ? FontAwesomeIcons.solidEyeSlash : FontAwesomeIcons.solidEye,
                icon_colol:isTrue_two? lightGreen.withOpacity(.45) :Colors.lightBlue.withOpacity(.45),
                controller: passwordController_log,
                suffixPressed:() {
                  setState(() {
                    isTrue_two=! isTrue_two;
                  });
                }, 
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 16),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        passwordController_log.clear();
                        
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 16),
                      )),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const Row(
                children: [
                  Text(
                      'By registering, you accept our Terms & Conditions\nand Privacy Policy'),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              customButton(
                text: 'Continue',
                onTap: () {
                  // logIn(name!, password);
                  if(reg_FormKey.currentState!.validate()){
                    Navigator.of(context).pushNamed(homeView.Id);
                    print(frist_name);
                    print(correctPassword);
                    print(email);
                  }
                  
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
 // void logIn(String emaill, passwordd) async {
  //   http.Response response = await http.post(
  //       Uri.parse(
  //           'https://1644-197-120-14-241.ngrok-free.app/users/customers/register/'),
  //       body: {'username': emaill, 'password': passwordd});
  //   print(response.statusCode);
  // }
