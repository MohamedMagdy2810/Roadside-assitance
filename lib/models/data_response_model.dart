class response_model {
  final serviceProviders service_provider;
  final USERS user;

  response_model({
    required this.service_provider,
    required this.user,
  });
  factory response_model.fromJson(jsonData) {
    return response_model(
        service_provider: serviceProviders.fromJson(jsonData['nearby_service_providers']),
         user:USERS.fromJson(jsonData['nearby_users']) );
  }
}

class USERS  {
 
  final int num;
  final String userName;
  final List location;

  USERS(
      {
     
      required this.userName,
      required this.num,
      required this.location});

  factory USERS.fromJson(jsonData) {
    return USERS(
       
        num: jsonData['phone_number'],
        userName: jsonData['username'],
        location: jsonData['location']);
  }

  
}

class serviceProviders  {
  final String service_type;
  final String? userName;
  final int? num;
  final List location;

  serviceProviders(
      {
        this.num,
      required this.service_type,
      required this.userName,
      required this.location});

  factory serviceProviders.fromJson(jsonData) {
    return serviceProviders(
       num: jsonData['phone_number'],
        service_type: jsonData['service_type'],
        userName: jsonData['username'],
        location: jsonData['location']);
  }

  
}

