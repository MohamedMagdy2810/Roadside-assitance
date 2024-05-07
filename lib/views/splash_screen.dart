import 'package:flutter/material.dart';
import 'package:roadside_assitance/services/Api.dart';
import 'package:roadside_assitance/views/first_screen.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
// import 'package:roadside_assitance/services/token_manager.dart'; // Import your TokenManager class

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateAfterDelay();
  }

  void navigateAfterDelay() {
    Future.delayed(Duration(seconds: 1), () {
      checkTokenAndNavigate();
    });
  }

  Future<void> checkTokenAndNavigate() async {
    // Check if the token exists
    String? storedToken = await TokenManager.getToken();
    if (storedToken != null) {
      // Navigate to home view if token exists
      Navigator.of(context).pushReplacementNamed(homeView.Id);
    } else {
      // Navigate to login screen if token doesn't exist
      Navigator.of(context).pushReplacementNamed(first_screen.ID);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff27541C
),
      body: Center(
        child: Image.asset('assets/images/splash.png',fit: BoxFit.fitWidth,) // or any other loading indicator
      ),
    );
  }
}
