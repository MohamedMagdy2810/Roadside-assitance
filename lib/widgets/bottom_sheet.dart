import 'package:flutter/material.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';

class bottoSheet extends StatelessWidget {
  const bottoSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(hintText: 'Enter servcie type'),
            SizedBox(height: 32,),
            CustomTextField(hintText: 'Descripton',maxlines: 5,),
            SizedBox(height: 32,),
            customButton(text: 'Send request')
        
          ],
        ),
      ),
    );
  }
}