//  يوجد خبل داخل اليو اي , لازم اظبطه تاني 

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/services/Api.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/views/profile_view.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_password_field.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';
import 'package:roadside_assitance/widgets/drop_down_menu_services.dart';

class service_provider_page extends StatefulWidget {
  const service_provider_page({super.key});
  static String ID = 'service_provider_page';

  @override
  State<service_provider_page> createState() => _service_provider_pageState();
}

class _service_provider_pageState extends State<service_provider_page> {
// --------------------------------------------------------------------
  bool isTrue_P = true;
  bool isTrue_two_P = true;

  final reg_provider_formKey = GlobalKey<FormState>();
  var user_email_provider = TextEditingController();
  var username_provider = TextEditingController();
  var passwordController_Provider_reg = TextEditingController();
  var passwordController_Provider_reg_two = TextEditingController();
  String? correctPassword_Provider;
  String? frist_name_Provider;
  String? last_name_Provider;
  String? email_Provider;
  String? user_Name_Provider;
  String? Password_Provider, Password2_Provider;

// ------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightWhite,
      body: Form(
        key: reg_provider_formKey,
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
                        height: 45,
                        onChanged: (data) {
                          frist_name_Provider = data;
                        },
                        hintText: 'First Name',
                        keyboardType: TextInputType.text,
                        controller: f_name_provider,
                        validation: (value) {
                          frist_name_Provider = value.toString();
                          if (value == null || value.isEmpty) {
                            return "Enter Your First Name";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: CustomTextField(
                        height: 45,
                        onChanged: (data) {
                          last_name_Provider = data;
                        },
                        hintText: 'Last Name',
                        keyboardType: TextInputType.text,
                        controller: l_name_provider,
                        validation: (value) {
                          last_name_Provider = value.toString();
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
                  height: 16,
                ),
                CustomTextField(
                  height: 45,
                  onChanged: (data) {
                    user_Name_Provider = data;
                  },
                  hintText: 'Enter your Username',
                  controller: username_provider,
                  validation: (value) {
                    user_Name_Provider = value.toString();
                    if (value == null || value.isEmpty) {
                      return "Enter Your username";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  height: 45,
                  onChanged: (data) {
                    email_Provider = data;
                  },
                  hintText: 'Enter your Email',
                  keyboardType: TextInputType.emailAddress,
                  controller: user_email_provider,
                  validation: (value) {
                    email_Provider = value.toString();
                    if (value == null || value.isEmpty) {
                      return "Enter Your Email";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomPasswordField(
                  height: 45,
                  onChanged: (data) {
                    Password_Provider = data;
                  },
                  isPassword: isTrue_P,
                  hintText: 'Password',
                  validation: (value) {
                    correctPassword_Provider = value;
                    if (value == null || value.isEmpty) {
                      return "please enter your Password";
                    }
                    return null;
                  },
                  suffix: isTrue_P
                      ? FontAwesomeIcons.solidEyeSlash
                      : FontAwesomeIcons.solidEye,
                  icon_colol: isTrue_P
                      ? lightGreen.withOpacity(.45)
                      : Colors.blue.withOpacity(.45),
                  controller: passwordController_Provider_reg,
                  suffixPressed: () {
                    setState(() {
                      isTrue_P = !isTrue_P;
                    });
                  },

                ),
                const SizedBox(
                  height: 16,
                ),
                CustomPasswordField(
                  height: 45,
                  onChanged: (data) {
                    Password2_Provider = data;
                  },
                  hintText: 'Retype Password',
                  isPassword: isTrue_two_P,
                  validation: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter your Password";
                    } else if (value != correctPassword_Provider) {
                      return 'Password incorrect';
                    }
                    return null;
                  },
                  suffix: isTrue_two_P
                      ? FontAwesomeIcons.solidEyeSlash
                      : FontAwesomeIcons.solidEye,
                  icon_colol: isTrue_two_P
                      ? lightGreen.withOpacity(.45)
                      : Colors.blue.withOpacity(.45),
                  controller: passwordController_Provider_reg_two, // راجع تاني عشان في غلط في اللوجيك
                  suffixPressed: () {
                    setState(() {
                      isTrue_two_P = !isTrue_two_P;
                    });
                  },

                ),
                const SizedBox(
                  height: 16,
                ),
                custom_drop_down_menu(),
                // CustomDropdown(),
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
                          Navigator.pushNamed(context, LogInPage.Id);
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
                    if (reg_provider_formKey.currentState!.validate()) {
                      // auth().signUp(context, email!, Password, Password2,
                      //     user_Name, frist_name, last_name);
                      print("Validation is correct♥");
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
