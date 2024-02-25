import 'package:flutter/material.dart';
import 'package:roadside_assitance/views/home_view.dart';

import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/views/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        registerPage.Id: (context) =>  registerPage(),
        LogInPage.Id: (context) =>const  LogInPage(),
        homeView.Id: (context) =>const  homeView(),
      },
      home:const LogInPage(),
      
    );}
     
}
