class response_model {
  final String token;
  final int ID;
  final bool is_customer;

  response_model(
      {required this.token, required this.ID, required this.is_customer});
  factory response_model.fromJson(jsonData) {
    return response_model(
        token: jsonData['token'],
        ID: jsonData['user_id'],
        is_customer: jsonData['is_customer']);
  }
}
