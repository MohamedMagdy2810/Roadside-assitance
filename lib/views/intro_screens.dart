import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:roadside_assitance/request_data_cubit/get_data_states.dart';
import 'package:roadside_assitance/views/first_screen.dart';
import 'package:roadside_assitance/widgets/map.dart';

class introScreens extends StatelessWidget {
  static String ID = 'introScreen';
  @override
  Widget build(BuildContext context) {
    
    return IntroductionScreen(
      
      pages: [
        PageViewModel(
          title: "We Here For You",
          body: "Quick access to rescue ,The best protection for your data ,The best services for you.",
          image: Center(
            child: Image.asset("assets/images/m2.png", height: 250.0),
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Did your car break down?",
          body: "We provide you with the best service to repair all car problems such as car breakdown, battery problems, engine oil problems, and fuel shortages.",
          image: Image.asset(
            "assets/images/Repair.png"
            ,height: 150,
            ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Are your tires safe?",
          body: " We provide you with the best service to repair all car tire problems on the road, and to achieve safety on your trip.",
          image: Image.asset("assets/images/flat_tire.png",),
          decoration: getPageDecoration(),
        ),
              ],
      onDone: () {
        // Handle when done is pressed
        Navigator.of(context).pushReplacementNamed(first_screen.ID);
      },
      onSkip: () {
        // Handle when skip is pressed
        Navigator.of(context).pushReplacementNamed(first_screen.ID);
      },
      showSkipButton: true,
      skip: const Text("Skip", style: TextStyle(color: Colors.black)),
      next: const Icon(Icons.arrow_forward, color: Color(0xff2B5F1D)),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xff2B5F1D))),
      dotsDecorator: getDotDecoration(),
      globalBackgroundColor: Color(0xFFF4F2EF),
    );
  }

  DotsDecorator getDotDecoration() {
    return DotsDecorator(
      color: Colors.black26,
      activeColor: Color(0xff2B5F1D),
      size: Size(10.0, 10.0),
      activeSize: Size(22.0, 10.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
      titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 16.0),
      bodyPadding: EdgeInsets.all(16.0).copyWith(bottom: 0),
      imagePadding: EdgeInsets.all(24.0),
      pageColor: Color(0xFFF4F2EF),
    );
  }
}