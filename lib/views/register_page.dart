import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:roadside_assitance/services/Api.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/views/profile_view.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';

import 'package:roadside_assitance/widgets/custom_password_field.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';

var user_email = TextEditingController();
var username = TextEditingController();
String? correctPassword;


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
  final reg_FormKey = GlobalKey<FormState>();
String? frist_name;
  String? last_name;
  String? email;
  String? user_Name;
  String? Password, Password2;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        // appBar: AppBar(
        //   // backgroundColor: lightWhite,
        // ),
        backgroundColor: lightWhite,
        body: Form(
          key: reg_FormKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 60),
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
                    height: 50,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          onChanged: (data) {
                            frist_name = data;
                            if (reg_FormKey.currentState!.validate()){
                            return null;
                          }
                          },
                          controller: f_name_person,
                          hintText: 'First Name',
                          keyboardType: TextInputType.text,
                          validation: (value) {
                            frist_name = value.toString();
                            if (value == null || value.isEmpty) {
                              return "Enter Your First Name";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: CustomTextField(
                          onChanged: (data) {
                            last_name = data;
                            if (reg_FormKey.currentState!.validate()){
                            return null;
                          }
                          },
                          controller: l_name_person,
                          hintText: 'Last Name',
                          keyboardType: TextInputType.text,
                          validation: (value) {
                            last_name = value.toString();
                            if (value == null || value.isEmpty) {
                              return "Enter Your Last Name";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    onChanged: (data) {
                      user_Name = data;
                      if (reg_FormKey.currentState!.validate()){
                            return null;
                          }
                    },
                    controller: username,
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Enter your Username',
                    validation: (value) {
                      user_Name = value.toString();
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Username";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    onChanged: (data) {
                      email = data;
                      if (reg_FormKey.currentState!.validate()){
                            return null;
                          }
                    },
                    controller: user_email,
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
                    height: 20,
                  ),
                  CustomPasswordField(
                    onChanged: (data) {
                      Password = data;
                      if (reg_FormKey.currentState!.validate()){
                            return null;
                          }
                    },
                    isPassword: isTrue,
                    hintText: 'Password',
                    validation: (value) {
                      correctPassword = value;
                      if (value == null || value.isEmpty) {
                        return "please enter your Password";
                      }
                      return null;
                    },
                    suffix: isTrue
                        ? FontAwesomeIcons.solidEyeSlash
                        : FontAwesomeIcons.solidEye,
                    icon_colol: isTrue
                        ? lightGreen.withOpacity(.45)
                        : Colors.blue.withOpacity(.45),
                    controller: passwordController_reg,
                    suffixPressed: () {
                      setState(() {
                        isTrue = !isTrue;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomPasswordField(
                    onChanged: (data) {
                      Password2 = data;
                      if (reg_FormKey.currentState!.validate()){
                            return null;
                          }
                    },
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
                    suffix: isTrue_two
                        ? FontAwesomeIcons.solidEyeSlash
                        : FontAwesomeIcons.solidEye,
                    icon_colol: isTrue_two
                        ? lightGreen.withOpacity(.45)
                        : Colors.blue.withOpacity(.45),
                    controller: passwordController_log,
                    suffixPressed: () {
                      setState(() {
                        isTrue_two = !isTrue_two;
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
                    text: 'Sign up',
                    onTap: () {
                      // // logIn(name!, password);
                      if (reg_FormKey.currentState!.validate()) {
                        setState(() {
                          isLoading=true;
                        });
                        auth().signUp(context, email!, Password, Password2,
                            user_Name, frist_name, last_name);
                            setState(() {
                          isLoading=false;
                        });
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
 