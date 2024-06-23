import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:roadside_assitance/classes/shared_preferences.dart';
import 'package:roadside_assitance/services/Api.dart';
import 'package:roadside_assitance/views/otp_screen.dart';

class PhoneAuthView extends StatefulWidget {
  const PhoneAuthView({super.key});
  static String Id = 'phoneAuth';

  @override
  State<PhoneAuthView> createState() => _PhoneAuthViewState();
}

String? token;

class _PhoneAuthViewState extends State<PhoneAuthView> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadToken();
  }

  Future<void> _loadToken() async {
    final Token = await TokenManager.getToken();
    setState(() {
      token = Token;
      print('token =>>$token');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your mobile number',
              style: TextStyle(
                color: Color(0xff27541C),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/egypt2.png', height: 20, width: 30),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '+20',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _phoneController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Mobile number',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff275217),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () async {
                  if (_phoneController.text.isNotEmpty) {
                    final num = int.tryParse(_phoneController.text);
                    if (num != null) {
                      await auth().phoneAuth(num, token!);
                      Navigator.pushNamed(context, otpScreen.Id);
                    } else {
                      // Handle invalid phone number input
                      print('Invalid phone number');
                    }
                  } else {
                    // Handle empty phone number input
                    print('Phone number is empty');
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
