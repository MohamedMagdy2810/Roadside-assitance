class api_response_model_login {
  final String token;
  final userModel user;

  api_response_model_login({
    required this.token,
    required this.user,
  });
  factory api_response_model_login.fromJson(jsonData) {
    return api_response_model_login(
        token: jsonData['token'], user:userModel.fromJson(jsonData['user']) );
  }
}

class userModel  {
  final String f_name;
  final String l_name;
  final String email;
  final String userName;
  final bool isCustome;

  userModel(
      {required this.f_name,
      required this.l_name,
      required this.email,
      required this.userName,
      required this.isCustome});

  factory userModel.fromJson(jsonData) {
    return userModel(
        f_name: jsonData['first_name'],
        l_name: jsonData['last_name'],
        email: jsonData['email'],
        userName: jsonData['username'],
        isCustome: jsonData['is_customer']);
  }

  
}
