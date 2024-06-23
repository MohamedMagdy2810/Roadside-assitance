import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:roadside_assitance/widgets/map.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    if (permission == LocationPermission.whileInUse) {
     Position pos = await Geolocator.getCurrentPosition();
      final Current_latitude = pos.latitude;
      final Current_longitude = pos.longitude;
      print("Current_latitude : $Current_latitude");
      print("Current_longitude : $Current_longitude");

    }
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: TextButton.icon(
            onPressed: () {
              getCurrentLocation();
            },
            icon: Icon(Icons.my_location),
            label: Text(
              'Get Current Location '),
          ),
        ),
        Expanded(
          child: TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapScreen(),
                  ),
              );
            },
            icon: Icon(Icons.location_on),
            label: Text('Select on Map'),
          ),
        ),
      ],
    );
  }
}
