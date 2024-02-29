import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {
        super.key, 
        required this.hintText, 
        this.onSaved, 
        this.obsecureText = false,  
        this.isPassword=false
        
        
        });
  final String hintText;
  Function(String?)? onSaved;
  bool obsecureText;
  bool? isPassword ;
  @override
  Widget build(BuildContext context) {
    return Form(
      
      child: SizedBox(
        height: 50,
        child: TextFormField(
          obscureText: obsecureText,
          validator: (data) {
            if (data!.isEmpty) {
              return 'failed is requried';
            }
          },
          onSaved: onSaved,
          
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle:  TextStyle(color:Color(0xff2B5F1D).withOpacity(.45),fontSize: 15),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: KprimaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: KprimaryColor)),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: KprimaryColor))),
        ),
      ),
    );
  }
}
