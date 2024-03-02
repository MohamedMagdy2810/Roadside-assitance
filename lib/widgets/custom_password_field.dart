// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/views/register_page.dart';
          // FontAwesomeIcons.solidEyeSlash,size: 20,color: lightGreen.withOpacity(.45),

class CustomPasswordField extends StatelessWidget {
  CustomPasswordField(
      {
        super.key, 
        required this.hintText, 
        this.onSaved, 
        this.validation,
        this.suffixPressed,
        this.suffix,
        this.icon_colol,
        this.controller,
        required this.isPassword,
        });
  final String hintText;
  Function(String?)? onSaved;
  Function()? suffixPressed;
  IconData ? suffix ;
  Color ? icon_colol ;
  String ? Function(String?)? validation ;
  TextEditingController? controller ;
  bool isPassword ;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:isPassword,
      validator: validation,
      onSaved: onSaved,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon:IconButton(
        onPressed: suffixPressed,
        icon: Icon(
          suffix,
          size: 20,
          color: icon_colol,
        ),
      ),
          hintText: hintText,
          hintStyle:  TextStyle(color:lightGreen.withOpacity(.45),fontSize: 15),
          
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: KprimaryColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: KprimaryColor)),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: KprimaryColor))),
          
    );
  }
}
