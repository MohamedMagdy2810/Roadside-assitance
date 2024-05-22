import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightWhite,
      body: Form(
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
                        onChanged: (data) {},
                        hintText: 'First Name',
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: CustomTextField(
                        height: 45,
                        onChanged: (data) {},
                        hintText: 'Last Name',
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  height: 45,
                  onChanged: (data) {},
                  hintText: 'Enter your Username',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  height: 45,
                  onChanged: (data) {},
                  hintText: 'Enter your Email',
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomPasswordField(
                  height: 45,
                  onChanged: (data) {},
                  isPassword: true,
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomPasswordField(
                  height: 45,
                  onChanged: (data) {},
                  hintText: 'Retype Password',
                  isPassword: true,
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
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
