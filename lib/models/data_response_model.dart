class response_model {
  final List<ServiceProvider> serviceProviders;
  final List<User> users;

  response_model({
    required this.serviceProviders,
    required this.users,
  });

  factory response_model.fromJson(Map<String, dynamic> jsonData) {
    var serviceProvidersJson = jsonData['nearby_service_providers'] as List;
    var usersJson = jsonData['nearby_users'] as List;

    List<ServiceProvider> serviceProvidersList = serviceProvidersJson
        .map((item) => ServiceProvider.fromJson(item))
        .toList();

    List<User> usersList = usersJson.map((item) => User.fromJson(item)).toList();

    return response_model(
      serviceProviders: serviceProvidersList,
      users: usersList,
    );
  }
}

class User {
  final String username;
  final String? phoneNumber;
  final List<double> location;

  User({
    required this.username,
    required this.phoneNumber,
    required this.location,
  });

  factory User.fromJson(Map<String, dynamic> jsonData) {
    return User(
      username: jsonData['username'],
      phoneNumber: jsonData['phone_number'],
      location: List<double>.from(jsonData['location']),
    );
  }
}

class ServiceProvider {
  final String username;
  final String? phoneNumber;
  final String serviceType;
  final List<double> location;

  ServiceProvider({
    required this.username,
    required this.phoneNumber,
    required this.serviceType,
    required this.location,
  });

  factory ServiceProvider.fromJson(Map<String, dynamic> jsonData) {
    return ServiceProvider(
      username: jsonData['username'],
      phoneNumber: jsonData['phone_number'],
      serviceType: jsonData['service_type'],
      location: List<double>.from(jsonData['location']),
    );
  }
}
