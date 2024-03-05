import 'package:flutter/material.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';

class bottomSheet extends StatelessWidget {
  const bottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(right:16.0,left: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Column(
          children: [
           const SizedBox(height: 32,),
            CustomTextField(hintText: 'Enter servcie type'),
         const   SizedBox(height: 32,),
            CustomTextField(hintText: 'Descripton',maxlines: 5,),
          const  SizedBox(height: 32,),
            customButton(text: 'Send request'),
          const  SizedBox(height: 32,),
        
          ],
        ),
      ),
    );
  }
}