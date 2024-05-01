import 'dart:convert';
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
         if (response.statusCode == 200) {
    // Parse the JSON response
    Map<String, dynamic> jsonResponse = json.decode(response.body);
    api_response_model responseModel = api_response_model.fromJson(jsonResponse);

    // Save the token
    await TokenManager.saveToken(responseModel.token);

    // Continue with your navigation or other logic
    navigateIfSuccessful(context, response.statusCode);
  }
        
    

    print(' status code is ===> ${response.statusCode}');
  }

  void navigateIfSuccessful(BuildContext context, int statusCode) {
    if (statusCode == 200 || statusCode == 201) {
      
      Navigator.of(context).pushNamed(homeView.Id);
    } else {
      showSnackbar(context, 'Invalid try again ');
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
    navigateIfSuccessful(context, response.statusCode);
    print(' status code is ===> ${response.statusCode}');
    print(response.body);
  }
}


class TokenManager {
  static Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  static Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}