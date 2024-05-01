import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/models/_model.dart';
import 'package:url_launcher/url_launcher.dart';

class customRequestWidget extends StatelessWidget {
   customRequestWidget(this.responseModel
    
  );
  final response_model responseModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffD9D9D9)),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                Icon(
                  FontAwesomeIcons.circleUser,
                  size: 32,
                ),
                  const SizedBox(
                    width: 24,
                  ),
                   
                    Text(
                     responseModel.name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                    width: 24,
                  ),
                    Text(
                      responseModel.servicType,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
              
                  const SizedBox(
                    width: 32,
                  ),
                
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.locationDot,color: Colors.blue,size: 28,)),
                  IconButton(onPressed: (){
                    _launchWhatsApp();
                  }, icon: Icon(FontAwesomeIcons.whatsapp,color: Colors.green,size: 28,)),
                  IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.phone,color: Color(0xff088408),size: 28,)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
void _launchWhatsApp() async {
  // Change the number to the desired WhatsApp number
  var whatsappUrl = "whatsapp://send?phone=20+01067180305"; // Replace +123456789 with the desired WhatsApp number

  if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
    await launchUrl(Uri.parse(whatsappUrl));
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

