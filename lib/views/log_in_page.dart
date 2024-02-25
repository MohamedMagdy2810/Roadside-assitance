import 'package:flutter/material.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/views/register_page.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_icons_row.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';
import 'package:roadside_assitance/widgets/cutom_text_row_divider.dart';

class LogInPage extends StatelessWidget {
  static String Id = 'logInPage';
  const LogInPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 24, left: 24),
              child: Container(
                width: double.infinity,
                height: 550,
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
                    'Welcome back!',
                    style: TextStyle(
                        color: Color(0xff275217),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const customIconsRow(),
                  const SizedBox(
                    height: 16,
                  ),
                  const customTextRow(
                    title: 'Or continue with',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextField(hintText: 'Email address'),
                  CustomTextField(hintText: 'Password'),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Color(0xff275217),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,),
                    ),
                  ),
                  customButton(text: 'Continue',
                  onTap: () {
                    Navigator.of(context).pushNamed(homeView.Id);
                  },)
                ]),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a member?'),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(registerPage.Id);
                    },
                    child: const Text(
                      'create an account',
                      style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
