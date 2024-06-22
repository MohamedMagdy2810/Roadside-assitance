import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_assitance/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {
        super.key, 
        required this.hintText, 
        this.error_style,
        this.onChanged,
        this.on_Tap,
        this.height =64,
        this.keyboardType,
        this.validation,  this.maxlines =1,
          this.controller
          
        });
  final String hintText;
  final double height;
  final int maxlines;
  final TextStyle ?error_style ;
  Function(String?)? onChanged;
  Function() ? on_Tap;
  String ? Function(String?)? validation;
  TextEditingController ? controller ;
  TextInputType ?keyboardType ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: TextFormField(
        onTap:on_Tap,
        maxLines: maxlines,
        validator:validation ,
        keyboardType:keyboardType ,
        controller: controller,
        onChanged:onChanged ,
        
        decoration: InputDecoration(
          errorStyle:error_style ,
            hintText: hintText,
            label:Text(
              hintText,
              style:TextStyle(
                color: Color(0xff2B5F1D),
              ) ,
              ) ,
            // labelStyle: TextStyle(color:const Color(0xff2B5F1D).withOpacity(.45),fontSize: 15),
            // labelText: "${hintText}",
      
            hintStyle:  TextStyle(color:const Color(0xff2B5F1D).withOpacity(.45),fontSize: 15),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: KprimaryColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: KprimaryColor)),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: KprimaryColor))
                ),
      ),
    );
  }
}
