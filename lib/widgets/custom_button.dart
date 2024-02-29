import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  customButton({
    this.onTap, 
    required this.text,
    this.font_size
    });
  final String text ;
  double ? font_size ;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
        child:Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:const  Color(0xff275217), borderRadius: BorderRadius.circular(12)),
                child:  Center(
                    child: Text(
                 text,
                  style:  TextStyle(
                    fontSize:font_size ,
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
      ),
    );
  }
}