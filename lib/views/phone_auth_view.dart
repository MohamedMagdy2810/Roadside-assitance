import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:roadside_assitance/views/otp_screen.dart';

class PhoneAuthView extends StatelessWidget {
  const PhoneAuthView({super.key});
static String Id = 'phoneAuth';
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
                    onPressed: () {
                      Navigator.pushNamed(context, otpScreen.Id);
                      // Add your action for the Next button here
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(
                  fontSize:24 ,
                    color: Colors.white),
                        ),
                        SizedBox(width: 16),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
    )
      ;
  }
}