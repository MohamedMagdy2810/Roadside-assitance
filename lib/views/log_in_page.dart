import 'package:flutter/material.dart';
class LogInPage extends StatelessWidget {
  static String Id = 'logInPage';
  const LogInPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: lightWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 24, left: 24),
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
                  CustomTextField(hintText: 'Email address'),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomPasswordField(hintText: 'Password'),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?',style: TextStyle(fontSize: 16),),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
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
                    text: 'Continue',
                    onTap: () {
                      Navigator.of(context).pushNamed(homeView.Id);
                    },
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
