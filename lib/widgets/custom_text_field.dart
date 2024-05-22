import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_assitance/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {
        super.key, 
        required this.hintText, 
        

        this.onChanged,
        this.height =64,
        this.keyboardType,
        this.validation,  this.maxlines =1,
          this.controller
        });
  final String hintText;
  final double height;
  final int maxlines;
  Function(String?)? onChanged;
  String ? Function(String?)? validation;
  TextEditingController ? controller ;
  TextInputType ?keyboardType ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: TextFormField(
        
        maxLines: maxlines,
        validator:validation ,
        keyboardType:keyboardType ,
        controller: controller,
        onChanged:onChanged ,
        
        decoration: InputDecoration(
            hintText: hintText,
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
