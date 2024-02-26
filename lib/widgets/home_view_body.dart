import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_service_card.dart';
import 'package:roadside_assitance/widgets/services_type.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32),
              child: Container(
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Request service',
                      style: TextStyle(color: lightWhite, fontSize: 28),
                    ),
                    Icon(FontAwesomeIcons.screwdriverWrench)
                  ],
                ),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff275217)),
              )),
         const Padding(
            padding:  EdgeInsets.only(left:16.0),
            child: Text(
              'Current requests',
              style: TextStyle(
                  color: Color(0xff275217),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
