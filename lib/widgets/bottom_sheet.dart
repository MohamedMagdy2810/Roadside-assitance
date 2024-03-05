import 'package:flutter/material.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';
import 'package:roadside_assitance/widgets/cutom_text_row_divider.dart';

class bottoSheet extends StatelessWidget {
  const bottoSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    
      child: Padding(
        padding:  EdgeInsets.only(right:16.0,left: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32,),
              CustomTextField(hintText: 'Enter servcie type'),
              SizedBox(height: 32,),
              CustomTextField(hintText: 'Descripton',maxlines: 5,),
              SizedBox(height: 32,),
              customButton(text: 'Send request'),
              SizedBox(height: 32,),
          
            ],
          ),
        ),
      ),
    );
  }
}