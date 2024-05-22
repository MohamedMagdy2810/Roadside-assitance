import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/models/_model.dart';
import 'package:roadside_assitance/views/services_page.dart';
import 'package:roadside_assitance/widgets/custom_request_service_card.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32),
              child:  GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, ServivesView.ID);
                },
                child: Container (  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff275217)),  child:
                
                 const  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text(
                        'Request service',
                        style: TextStyle(color: lightWhite, fontSize: 28),
                      ),
                      Icon(FontAwesomeIcons.screwdriverWrench)
                    ],
                  ),
                ),
              )),

         const Padding(
            padding:  EdgeInsets.only(left:16.0),
            child: Text(
              ' Service providers',
              style: TextStyle(
                  color: lightGreen,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          customRequestWidget(response_model('Mohamed', 'Gas Station', 012, 012))
        ],
      ),
    );
  }
}
