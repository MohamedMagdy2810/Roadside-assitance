
import 'package:flutter/material.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';

class otpScreen extends StatelessWidget {
  static String Id = 'otpView';
  const otpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(
              height: 32,
            ),
          const  Text(
              'Enter the otp',
              style: TextStyle(
                  color: Color(0xff27541C),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          const  SizedBox(
              height: 32,
            ),
          const  Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  FourDigitInput(),
                  SizedBox(
                    width: 8,
                  ),
                  FourDigitInput(),
                  SizedBox(
                    width: 8,
                  ),
                  FourDigitInput(),
                  SizedBox(
                    width: 8,
                  ),
                  FourDigitInput(),
                ],
              ),
            ),
          const  SizedBox(
              height: 16,
            ),
          const  Padding(
              padding:  EdgeInsets.only(left: 24.0),
              child: Text(
                'I didn’t recive the OTP',
                style: TextStyle(
                    color: Color(0xff27541C),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xff27541C)
                    ),
              ),
            ),const SizedBox(
              height: 32,
            ),
            customButton(text: 'confirm',font_size: 16,
          onTap: (){
             Navigator.pushNamed(context, homeView.Id);
          },  
          )
          ],
        ),
      ),
    );
  }
}

class FourDigitInput extends StatefulWidget {
  const FourDigitInput({Key? key}) : super(key: key);

  @override
  _FourDigitInputState createState() => _FourDigitInputState();
}

class _FourDigitInputState extends State<FourDigitInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      width: 54,
      child: TextFormField(
        controller: _controller,
        keyboardType: TextInputType.number,
        // Removed maxLength property
        cursorColor: Colors.black,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.zero,
          // Removed maxLength property
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(0, 0)),
            borderSide: BorderSide(color: Color(0xffD9D9D9)),
            // borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(0, 0)),
            borderSide: BorderSide(color: Color(0xffD9D9D9)),
          ),
          fillColor: Color(0xffD9D9D9),
          filled: true,
          // Set counterText to empty string
          counterText: '',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}