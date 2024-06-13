import 'dart:convert';
import 'package:roadside_assitance/classes/shared_preferences.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/models/data_response_model.dart';
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
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      api_response_model_login responseModel =
          api_response_model_login.fromJson(jsonResponse);
      await TokenManager.saveToken(responseModel.token);
      await userManager.saveName(responseModel.user.f_name);
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

/////////////////////////////////////////////////////////////////////////////////////////////


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
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      api_response_model_login responseModel =
          api_response_model_login.fromJson(jsonResponse);
      await TokenManager.saveToken(responseModel.token);
      await userManager.saveName(responseModel.user.f_name);
      navigateIfSuccessful(context, response.statusCode);
    }

    print(' status code is ===> ${response.statusCode}');
    print(response.body);
  }
}





/////////////////////////////////////////////////////////////////////////////////////////////
class GetData {
  Future<response_model> getData(String token) async {
    final body = json.encode({
      'current_location': 'Point(31.72292729304304 31.35974833774494)',
      'radius': 5000
    });
    final response = await http.post(
      Uri.parse('https://geodjango-test-no-docker.onrender.com/api/get-all-nearby/'),
      headers: {
        'Content-Type': 'application/json', 
        'Authorization': 'Token $token'
      },
      body: body,
    );

    print(response.body);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);

      response_model responseModel = response_model.fromJson(jsonData);
   
      return responseModel;
    } else {
      print('Failed to load data: ${response.statusCode}');
      throw Exception('Failed to load data');
    }
  }
}
