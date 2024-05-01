class api_response_model {
  final String token;
  final int ID;
  final bool is_customer;

  api_response_model(
      {required this.token, required this.ID, required this.is_customer});
  factory api_response_model.fromJson(jsonData) {
    return api_response_model(
        token: jsonData['token'],
        ID: jsonData['user_id'],
        is_customer: jsonData['is_customer']);
  }
}
