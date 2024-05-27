import 'dart:convert';
import 'package:roadside_assitance/classes/shared_preferences.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:roadside_assitance/models/api_response_model.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:http/http.dart' as http;
import 'package:roadside_assitance/widgets/snack_bar.dart';

class auth {
  Future<dynamic> logIn(BuildContext context, String email, password) async {
    http.Response response = await http.post(
        Uri.parse(
          'https://geodjango-test-no-docker.onrender.com/api/login/',
        ),
        body: {
          'username': email,
          'password': password,
        });
        print(response.body);
        print(' status code is ===> ${response.statusCode}');
       
 if (response.statusCode == 200) {
      // Parse the JSON response
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      api_response_model_login responseModel =
          api_response_model_login.fromJson(jsonResponse);

      // Save the token
      await TokenManager.saveToken(responseModel.token);
      await userManager.saveName(responseModel.user.f_name);

      // Continue with your navigation or other logic
      navigateIfSuccessful(context, response.statusCode);
    }

    
  }

 void navigateIfSuccessful(BuildContext context, int statusCode) {
  if (statusCode == 200 || statusCode == 201) {
    showSnackbar(context, 'Successful');

    
      Navigator.pushNamedAndRemoveUntil(context, homeView.Id, (route) => false);
    
  } else {
    showSnackbar(context, 'Invalid, try again');
  }
}

  Future<dynamic> signUp(BuildContext context, String email, password,
      password2, username, firstName, lastName) async {
    http.Response response = await http.post(
        Uri.parse(
          'https://geodjango-test-no-docker.onrender.com/api/signup/customer/',
        ),
        body: {
          'username': username,
          'email': email,
          'first_name': firstName,
          'last_name': lastName,
          'password': password,
          'password2': password2,
        });
    if (response.statusCode == 201) {
      // Parse the JSON response
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      api_response_model_login responseModel =
          api_response_model_login.fromJson(jsonResponse);

      // Save the token
      await TokenManager.saveToken(responseModel.token);
      await userManager.saveName(responseModel.user.f_name);

      // Continue with your navigation or other logic
      navigateIfSuccessful(context, response.statusCode);
    }

    print(' status code is ===> ${response.statusCode}');
    print(response.body);
  }
}

class getData {
  Future<dynamic> get_data() async {
    http.Response response = await http.post(
        Uri.parse(
          'https://geodjango-test-no-docker.onrender.com/api/get-all-nearby/',
        ),
        body: {
          'current_location':'Point ()'
        },
        headers: {
          'Authorization':TokenManager.getToken().toString()
        });
        print(response.statusCode);
}
}