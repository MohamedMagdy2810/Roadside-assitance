import 'package:flutter/material.dart';
import 'package:roadside_assitance/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {
        super.key, 
        required this.hintText, 
        this.onSaved,
        this.keyboardType,
        this.validation

        });
  final String hintText;
  Function(String?)? onSaved;
  String ? Function(String?)? validation;
  var emailController = TextEditingController();
  TextInputType ?keyboardType ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:validation ,
      keyboardType:keyboardType ,
      controller: emailController,
      onSaved:onSaved ,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle:  TextStyle(color:Color(0xff2B5F1D).withOpacity(.45),fontSize: 15),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: KprimaryColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: KprimaryColor)),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: KprimaryColor))
              ),
    );
  }
}
