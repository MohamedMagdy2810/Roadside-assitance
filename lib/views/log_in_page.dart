import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/services/Api.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/views/profile_view.dart';
import 'package:roadside_assitance/views/register_page.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_password_field.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';

class LogInPage extends StatefulWidget {
  static String Id = 'logInPage';
  const LogInPage({
    super.key,
  });

  @override
  State<LogInPage> createState() => _LogInPageState();
}

late String email, password;
bool isTrue = true;
var passwordController_log = TextEditingController();

class _LogInPageState extends State<LogInPage> {
  final log_FormKey = GlobalKey<FormState>();
  bool isLoading = false; // Add the isLoading state

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      color: KprimaryColor,
      inAsyncCall: isLoading, // Use the isLoading state
      child: Scaffold(
        backgroundColor: lightWhite,
        body: Form(
          key: log_FormKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150, right: 24, left: 24),
                  child: Container(
                    width: double.infinity,
                    height: 550,
                    child: Column(children: [
                      const Text(
                        'Welcome back!',
                        style: TextStyle(
                            color: Color(0xff275217),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      CustomTextField(
                        onChanged: (data) {
                          email = data!;
                          
                        },
                        controller: user_email,
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Enter your Email or Username',
                        validation: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Your Email or Username";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomPasswordField(
                        onChanged: (data) {
                          password = data!;
                          
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
                        controller: passwordController_log,
                        suffixPressed: () {
                          setState(() {
                            isTrue = !isTrue;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account?  ',
                            style: TextStyle(fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(registerPage.Id);
                              user_email.clear();
                              passwordController_log.clear();
                              l_name_person.clear();
                              f_name_person.clear();
                            },
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                color: Color(0xff275217),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      customButton(
                        text: 'Log in',
                        onTap: () async {
                          if (log_FormKey.currentState!.validate()) {

                            setState(() {
                              isLoading = true;
                            });
                            await auth().logIn(context, email, password);
                            
                            setState(() {
                              isLoading = false;
                            });
                          }
                        },
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


