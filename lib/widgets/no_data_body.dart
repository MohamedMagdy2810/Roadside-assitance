import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/generated/l10n.dart';
import 'package:roadside_assitance/models/data_response_model.dart';
import 'package:roadside_assitance/views/services_page.dart';
import 'package:roadside_assitance/widgets/custom_request_service_card.dart';

class noData extends StatelessWidget {
  const noData({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
        
          crossAxisAlignment: CrossAxisAlignment.center,
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
                
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text(
                        S.of(context).request,
                        style: TextStyle(color: lightWhite, fontSize: 28),
                      ),
                      Icon(FontAwesomeIcons.screwdriverWrench)
                    ],
                  ),
                ),
              )),
         
            Padding(
              padding: EdgeInsets.only(right: 140.0),
              child: Text(
                S.of(context).Service,
                style: TextStyle(
                    color: lightGreen,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16,),
            Image.asset('assets/images/no_data2.png',height: 100,),
            SizedBox(height: 16,),
            Text(S.of(context).noData,style: TextStyle(color:lightGreen,fontSize: 22,fontWeight: FontWeight.bold),),
            // Text('No requests yet',style: TextStyle(color: Color(0xff275217),fontSize: 40,fontWeight: FontWeight.bold),)
            // customRequestWidget(response_model('Mohamed', 'Gas Station', 012, 012))
          ],
        )
    ;
  }
}