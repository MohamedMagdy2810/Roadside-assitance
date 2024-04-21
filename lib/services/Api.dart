import 'package:flutter/material.dart';

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
    navigateIfSuccessful(context, response.statusCode);

    print(' status code is ===> ${response.statusCode}');
  }

  void navigateIfSuccessful(BuildContext context, int statusCode) {
    if (statusCode == 200) {
      Navigator.of(context).pushNamed(homeView.Id);
    }
    else{showSnackbar(context, 'Invalid email Or password');}
  }

  Future<dynamic> signUp(
      String email, password, password2, username, firstName, lastName) async {
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
    print(' status code is ===> ${response.statusCode}');
  }
}
