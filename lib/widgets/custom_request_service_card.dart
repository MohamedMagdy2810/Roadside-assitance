// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/models/data_response_model.dart';
import 'package:url_launcher/url_launcher.dart';

class customRequestWidget extends StatelessWidget {
  customRequestWidget(this.responseModel);
  final response_model? responseModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffD9D9D9)),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  const Icon(
                    FontAwesomeIcons.circleUser,
                    size: 32,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    // responseModel.service_provider.userName??responseModel.user.userName,
                    'Mohamed',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const Text(
                    '/',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    // responseModel.service_provider.service_type,
                      'gas station',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 34,
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black.withOpacity(.2)),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.locationDot,
                          color: Colors.blue,
                          size: 18,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'location',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _makePhoneCall();
                    },
                    child: Container(
                      width: 60,
                      height: 34,
                      decoration: BoxDecoration(
                          // border: Border.all(color: Colors.black.withOpacity(.2)),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.blue,
                            size: 18,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Call',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchWhatsApp();
                    },
                    child: Container(
                      width: 90,
                      height: 34,
                      decoration: BoxDecoration(
                          // border: Border.all(color: Colors.black.withOpacity(.2)),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.green,
                            size: 18,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Whatsapp',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
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
  var whatsappUrl =
      "whatsapp://send?phone=20+01067180305"; // Replace +123456789 with the desired WhatsApp number

  if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
    await launchUrl(Uri.parse(whatsappUrl));
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

void _makePhoneCall() async {
  // Change the number to the desired phone number
  var phoneNumber =
      "01067180305"; // Replace +123456789 with the desired phone number

  var phoneUrl = "tel:$phoneNumber";

  if (await canLaunchUrl(Uri.parse(phoneUrl))) {
    await launchUrl(Uri.parse(phoneUrl));
  } else {
    throw 'Could not launch $phoneUrl';
  }
}
