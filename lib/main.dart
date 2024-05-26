import 'package:flutter/material.dart';
import 'package:roadside_assitance/views/first_screen.dart';
import 'package:roadside_assitance/views/home_view.dart';

import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/views/register_page.dart';
import 'package:roadside_assitance/views/services_page.dart';
import 'package:roadside_assitance/views/servive_provider_signup.dart';
import 'package:roadside_assitance/views/splash_screen.dart';

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
       initialRoute: '/',
      // routes: {
      //    '/': (context) => SplashScreen(),
      //   registerPage.Id: (context) =>  registerPage(),
      //   first_screen.ID: (context) =>  first_screen(),
      //   LogInPage.Id: (context) =>const  LogInPage(),
      //   homeView.Id: (context) =>const  homeView(),
      //   ServivesView.ID: (context) =>  ServivesView(),
      //   service_provider_page.ID: (context) =>  service_provider_page(),
      // },
      home: service_provider_page(),
      
    );}
     
}
