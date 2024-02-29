import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roadside_assitance/constants.dart';

class profileView extends StatelessWidget {
  var name_person = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller:name_person,
            decoration: InputDecoration(
              hintStyle:  TextStyle(color:Color(0xff2B5F1D).withOpacity(.45),fontSize: 15),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: KprimaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: KprimaryColor)),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: KprimaryColor))),

          )
      
          
        ],
      ),
    );
  }
}