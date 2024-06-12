import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadside_assitance/classes/shared_preferences.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/models/data_response_model.dart';
import 'package:roadside_assitance/models/service_model.dart';
import 'package:roadside_assitance/services/Api.dart';


class servicesCard extends StatefulWidget {
  servicesCard({super.key, required this.service_model});
  final serviceModel service_model;

  @override
  State<servicesCard> createState() => _servicesCardState();
}

    String? token;
class _servicesCardState extends State<servicesCard> {
  @override
   @override
  void initState() {
    super.initState();
    _loadToken();
  }

  Future<void> _loadToken() async {
    final Token = await TokenManager.getToken();
    setState(() {
      token = Token;
      // print('token =>>$token');
    });
  }
 

  
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showAlertDialog(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 2,
                spreadRadius: 2,
                color: lightGreen.withOpacity(.3),
                offset: const Offset(0, 5))
          ], borderRadius: BorderRadius.circular(16), color: Colors.white),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Image.asset(
                widget.service_model.image,
                height: 75,
                width: 75,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                widget.service_model.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}



showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text(
      "Cancel",
      style: TextStyle(color: Colors.black),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: Text("Yes", style: TextStyle(color: Colors.black)),
    onPressed: ()async {
     response_model Response = await GetData().getData(token!);
     
       Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    elevation: .5,
    title: Text("Alert"),
    content: Text("Are you sure to request this service?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
