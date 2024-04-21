import 'package:http/http.dart' as http;

class auth {
  Future<dynamic> logIn(String email, password) async {
    http.Response response = await http.post(
        Uri.parse('https://geodjango-test-no-docker.onrender.com/api/login/',),
        body: {
          'username':email,
          'password':password,
        }
        
        );
        print(' status code is ===> ${response.statusCode}');
  }

  Future<dynamic> signUp(String email, password,password2,username,firstName,lastName) async {
    http.Response response = await http.post(
        Uri.parse('https://geodjango-test-no-docker.onrender.com/api/signup/customer/',),
        body: {
          'username':username,
          'email':email,
          'first_name':firstName,
          'last_name':lastName,
          'password':password,
          'password2':password2,
        }
        
        );
        print(' status code is ===> ${response.statusCode}');
  }
}




