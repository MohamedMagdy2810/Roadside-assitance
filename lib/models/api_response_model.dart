class api_response_model_login {
  final String token;
  final int ID;
  final bool is_customer;

  api_response_model_login(
      {required this.token, required this.ID, required this.is_customer});
  factory api_response_model_login.fromJson(jsonData) {
    return api_response_model_login(
        token: jsonData['token'],
        ID: jsonData['user_id'],
        is_customer: jsonData['is_customer']);
  }
}
class api_response_model_signUp {
  final String token;
  final String message;
  

  api_response_model_signUp(
      {required this.token, required this.message,});
  factory api_response_model_signUp.fromJson(jsonData) {
    return api_response_model_signUp(
        token: jsonData['token'],
        message: jsonData['message'],
    );
  }
}