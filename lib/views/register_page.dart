import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_icons_row.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';
import 'package:roadside_assitance/widgets/cutom_text_row_divider.dart';

class registerPage extends StatelessWidget {
  registerPage({
    super.key,
  });
  String? name;
  static String Id = 'registerPage';
  String? password;
  void logIn(String emaill, passwordd) async {
    http.Response response = await http.post(
        Uri.parse(
            'https://1644-197-120-14-241.ngrok-free.app/users/customers/register/'),
        body: {'username': emaill, 'password': passwordd});
    print(response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 24, left: 24),
              child: Container(
                
                width: double.infinity,
                height: 640,
                decoration: BoxDecoration(
                  
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32)),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: SizedBox(
                      height: 75,
                      child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            'assets/images/m.jpg',
                          )),
                    ),
                  ),
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
                    height: 8,
                  ),
                  const Text(
                    'Sign up quickly using',
                    style: TextStyle(
                      color: KprimaryColor,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const customIconsRow(),
                  const SizedBox(
                    height: 8,
                  ),
                  const customTextRow(
                    title: 'Or continue with email',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomTextField(hintText: 'Enter Name'),
                  CustomTextField(hintText: 'Enter Email',onSaved: (value){
                    name=value;
                  },),
                  CustomTextField(hintText: 'Password',
                  onSaved: (value) {
                    password=value;
                  },),
                  CustomTextField(hintText: 'Retype Password'),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0, top: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_box_outline_blank,
                          color: KprimaryColor,
                        ),
                        Text(
                          'I accepted all terms & conditions',
                          style: TextStyle(
                              color: Color(0xff275217),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  customButton(text: 'Sign Up',
                  onTap: () {
                    // logIn(name!, password);
                    Navigator.of(context).pushNamed(homeView.Id);
                  },)
                ]),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Log in',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
