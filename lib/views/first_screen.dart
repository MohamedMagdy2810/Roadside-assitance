import 'package:flutter/material.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';

class first_screen extends StatelessWidget {
  const first_screen({super.key});
  static String ID = 'firstScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF4F2EF),
      ),
      backgroundColor: Color(0xffF4F2EF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Get Start as',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff27541C)),
            ),
            const SizedBox(
              height: 64,
            ),
            customButton(
              text: 'Customer',
              font_size: 24,
              onTap: () {
                Navigator.pushNamed(context, LogInPage.Id);
              },
            ),
            const SizedBox(
              height: 24,
            ),
            customButton(
              text: 'Service provider',
              font_size: 24,
              onTap: () {
                Navigator.pushNamed(context, LogInPage.Id);
              },
            )
          ],
        ),
      ),
    );
  }
}
