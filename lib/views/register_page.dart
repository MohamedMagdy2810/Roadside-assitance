import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_icons_row.dart';
import 'package:roadside_assitance/widgets/custom_password_field.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';
import 'package:roadside_assitance/widgets/cutom_text_row_divider.dart';

class registerPage extends StatelessWidget {
  registerPage({
    super.key,
  });
  String? name;
  static String Id = 'registerPage';
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightWhite,
      ),
      backgroundColor: lightWhite,
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
              child: Container(
                
                width: double.infinity,
                height: 640,
                child: Column(children: [
                  const SizedBox(
                    height: 8,
                  ),
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
                  CustomTextField(hintText: 'Enter your name'),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextField(
                    hintText: 'Enter your Email',
                    onSaved: (value) {
                      name = value;
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomPasswordField(
                    obsecureText: true,
                    hintText: 'Password',
                    onSaved: (value) {
                      password = value;
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomPasswordField(
                      obsecureText: true, hintText: 'Retype Password'),
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
                 const  Row(
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
                      Navigator.of(context).pushNamed(homeView.Id);
                    },
                  )
                ]),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
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
