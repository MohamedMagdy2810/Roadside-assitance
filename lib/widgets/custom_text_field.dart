import 'package:flutter/material.dart';
import 'package:roadside_assitance/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.hintText, this.onSaved, this.obsecureText = false});
  final String hintText;
  Function(String?)? onSaved;
  bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 55,
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
              hintStyle: const TextStyle(color: KprimaryColor),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: const BorderSide(color: KprimaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: const BorderSide(color: KprimaryColor)),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: KprimaryColor))),
        ),
      ),
    );
  }
}
