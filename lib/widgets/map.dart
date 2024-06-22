// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';

// انا هنجت مش فاكر ازاي كنت بخلي اي فاريابول داخل الفانكشن يكون جلوبال في كل الكود
// انا هضيفها بعد لما اضغط
// double ?Current_latitude ;
// double ? Current_longitude ;
// getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       print('Location services are disabled.');
//     }
//     permission = await Geolocator.checkPermission();

//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         print('Location permissions are denied');
//       }
//     }
//     if (permission == LocationPermission.deniedForever) {
//       return Future.error(
//           'Location permissions are permanently denied, we cannot request permissions.');
//     }

//     if (permission == LocationPermission.whileInUse) {
//       Position pos = await Geolocator.getCurrentPosition();
//       // return pos ;
//       double Current_latitude = pos.latitude;
//       double Current_longitude = pos.longitude;
//       print("Current_latitude : $Current_latitude");
//       print("Current_longitude : $Current_longitude");

//     }
//   }

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}
var  cxx ;

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  LatLng? _initialPosition;
  final Set<Marker> _markers = {};
  bool is_loading = true;
  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'),
          position: _initialPosition!,
          infoWindow: InfoWindow(
            title: 'My Location',
            snippet: 'This is a snippet',
          ),
        ),
      );
    });
  }

  void getCurrentLocation() async {
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
      // return pos ;
      double Current_latitude = pos.latitude;
      double Current_longitude = pos.longitude;
      setState(() {
        _initialPosition = LatLng(Current_latitude, Current_longitude);
        is_loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: lightWhite,
      body: Center(
        child: is_loading
            ? CircularProgressIndicator()
            : Column(
                children: [
                  Expanded(
                    child: GoogleMap(
                      onTap: (LatLng latlan) {
                        setState(() {
                          _initialPosition = latlan;
                          _markers.clear();
                          _markers.add(
                            Marker(
                              markerId: MarkerId('id-1'),
                              position: _initialPosition!,
                              infoWindow: InfoWindow(
                                title: 'Selected Location',
                                snippet: 'This is a snippet',
                              ),
                            ),
                          );
                         
                           
                          print("The New lat : ${latlan.latitude}");
                          print("The New log : ${latlan.longitude}");
                        });
                      },
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _initialPosition!,
                        zoom: 15.0,
                      ),
                      markers: _markers,
                    ),
                  ),
                  // SizedBox(height: 40,),
                  Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          child: customButton(
                            text: "Done",
                            onTap: () {
                              setState(() {
                                cxx = _initialPosition ;
                                
                                print(cxx);
                                Navigator.pop(context);

                                
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          child: customButton(
                            text: "Cancle",
                            onTap: () {
                              setState(() {
                                _initialPosition = LatLng(0,0);
                                 Navigator.pop(context);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
