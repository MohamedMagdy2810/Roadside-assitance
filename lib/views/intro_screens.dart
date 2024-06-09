import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:roadside_assitance/views/first_screen.dart';

class introScreens extends StatelessWidget {
  static String ID = 'introScreen';
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Introduction 1",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.",
          image: Center(
            child: Image.asset("assets/images/m.jpg", height: 250.0),
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Introduction 2",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.",
          image: Center(
            child: Image.asset("assets/images/m.jpg", height: 250.0),
          ),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Introduction 3",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisi nulla purus neque quisque dictum dui. Accumsan fames adipiscing.",
          image: Center(
            child: Image.asset("assets/images/m.jpg", height: 250.0),
          ),
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
      next: const Icon(Icons.arrow_forward, color: Colors.blue),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue)),
      dotsDecorator: getDotDecoration(),
      globalBackgroundColor: Colors.white,
    );
  }

  DotsDecorator getDotDecoration() {
    return DotsDecorator(
      color: Colors.black26,
      activeColor: Colors.blue,
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
      pageColor: Colors.white,
    );
  }
}