import 'package:flutter/material.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/models/service_model.dart';

class servicesCard extends StatelessWidget {
   servicesCard({super.key, required this.service_model});
final serviceModel service_model;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      
        decoration: BoxDecoration(
          boxShadow: [
                BoxShadow(
                   blurRadius: 2,
                  spreadRadius: 2,
                  color: lightGreen.withOpacity(.3),
                  offset:const Offset(0, 5))
              ],
          borderRadius: BorderRadius.circular(16),
          color: Colors.white),
      
          child: Column(
            children: [
             const  SizedBox(height: 8,),
              Image.asset(service_model.image,height: 75,width: 75,),
             const SizedBox(height: 8,),
               Text(service_model.name,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
            ],
          ),
      ),
    );
  }
}