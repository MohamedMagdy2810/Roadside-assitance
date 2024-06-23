// // import 'dart:async';

// // import 'package:flutter/material.dart';
// // import 'package:google_maps_flutter/google_maps_flutter.dart';
// // import 'package:roadside_assitance/models/data_response_model.dart';

// // class MapTeto extends StatefulWidget {
// //   // final ServiceProvider serviceProvider;
  
// //   @override
// //   _MapTetoState createState() => _MapTetoState();
// // }

// // class _MapTetoState extends State<MapTeto> {
// //   Completer<GoogleMapController> _controller = Completer();

// //   static const LatLng _initialPosition = LatLng(37.7749, -122.4194); // موقع ابتدائي للخريطة
// //   LatLng _destinationPosition = LatLng(37.7749, -122.5194); // موقع نهائي للخريطة
// //   Set<Marker> _markers = Set<Marker>(); // مجموعة من العلامات

// //   @override
// //   void initState() {
// //     super.initState();
// //     _markers.add(Marker(
// //       markerId: MarkerId('destination'),
// //       position: _destinationPosition,
// //       infoWindow: InfoWindow(
// //         title: 'Destination',
// //         snippet: 'This is the destination',
// //       ),
// //     ));
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Google Maps'),
// //       ),
// //       body: GoogleMap(
// //         mapType: MapType.normal,
// //         initialCameraPosition: CameraPosition(
// //           target: _initialPosition,
// //           zoom: 12,
// //         ),
// //         markers: _markers,
// //         onMapCreated: (GoogleMapController controller) {
// //           _controller.complete(controller);
// //         },
// //         polylines: {
// //           Polyline(
// //             polylineId: PolylineId('route'),
// //             color: Colors.blue,
// //             width: 5,
// //             points: [
// //               _initialPosition,
// //               _destinationPosition,
// //             ],
// //           ),
// //         },
// //       ),
// //     );
// //   }
// // }
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';

// void main() => runApp(MaterialApp(home: MapScreen2()));

// class MapScreen2 extends StatefulWidget {
//   @override
//   _MapScreen2State createState() => _MapScreen2State();
// }

// class _MapScreen2State extends State<MapScreen2> {
//   Completer<GoogleMapController> _controller = Completer();

//   static const LatLng _initialPosition = LatLng(31.500598, 31.826074);
//   LatLng _currentPosition = _initialPosition; 
//   List<Map<String, dynamic>> _providers = [
//     {"username": "sdf", "location": LatLng(31.277355, 31.621789)},
//     {"username": "gezar", "location": LatLng(31.353190, 31.688146)},
//     {"username": "shehata", "location": LatLng(31.387970, 31.703827)},
//     {"username": "abdo", "location": LatLng(31.418768, 31.804779)},
//     {"username": "abdo", "location": LatLng(31.430963, 31.677049)},
//     {"username": "toball", "location": LatLng(31.493440, 31.832112)},
//   ]; // مقدمي الخدمات

//   Set<Marker> _markers = Set<Marker>(); // مجموعة من العلامات
//   Set<Polyline> _polylines = Set<Polyline>(); // مجموعة من الخطوط

//   @override
//   void initState() {
//     super.initState();
//     _markers.add(Marker(
//       markerId: MarkerId('current_position'),
//       position: _currentPosition,
//       infoWindow: InfoWindow(
//         title: 'Current Position',
//         snippet: 'This is your current position',
//       ),
//       icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
//     ));

//     _providers.forEach((provider) {
//       _markers.add(Marker(
//         markerId: MarkerId(provider["username"]),
//         position: provider["location"],
//         infoWindow: InfoWindow(
//           title: provider["username"],
//           snippet: 'Service Provider',
//         ),
//         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
//       ));
//     });

//     _updatePolylines();
//   }

//   Future<void> _updatePolylines() async {
//     List<LatLng> points = [_currentPosition];
//     _providers.forEach((provider) {
//       points.add(provider["location"]);
//     });

//     Polyline polyline = Polyline(
//       polylineId: PolylineId('route'),
//       color: Colors.blue,
//       width: 5,
//       points: points,
//     );

//     setState(() {
//       _polylines.clear();
//       _polylines.add(polyline);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Service Providers Map'),
//       ),
//       body: GoogleMap(
//         mapType: MapType.normal,
//         initialCameraPosition: CameraPosition(
//           target: _initialPosition,
//           zoom: 12,
//         ),
//         markers: _markers,
//         polylines: _polylines,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MaterialApp(home: MapScreen2()));

class MapScreen2 extends StatefulWidget {
  @override
  _MapScreen2State createState() => _MapScreen2State();
}

class _MapScreen2State extends State<MapScreen2> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _initialPosition = LatLng(31.500598, 31.826074);
  LatLng _currentPosition = _initialPosition;
  List<Map<String, dynamic>> _providers = [
    {"username": "sdf", "location": LatLng(31.277355, 31.621789),'servies' : 'Gas'},
    {"username": "gezar", "location": LatLng(31.353190, 31.688146),'servies' : 'Mechanical'},
    {"username": "shehata", "location": LatLng(31.387970, 31.703827),'servies' : 'Gas Station'},
    {"username": "abdo", "location": LatLng(31.418768, 31.804779),'servies' : 'Towing'},
    {"username": "abdo", "location": LatLng(31.430963, 31.677049),'servies' : 'Tires'},
    {"username": "toball", "location": LatLng(31.493440, 31.832112),'servies' : 'Mechanical - oil'},
  ];
  Map<String, dynamic> _selectedProvider = {
    "username": "sdf",
    "location": LatLng(31.277355, 31.621789)
  };

  Set<Marker> _markers = Set<Marker>(); // مجموعة من العلامات
  Set<Polyline> _polylines = Set<Polyline>(); // مجموعة من الخطوط

  @override
  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId('current_position'),
      position: _currentPosition,
      infoWindow: InfoWindow(
        title: 'Current Position',
        snippet: 'This is your current position',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
    ));

    _providers.forEach((provider) {
      _markers.add(Marker(
        markerId: MarkerId(provider["username"]),
        position: provider["location"],
        infoWindow: InfoWindow(
          title: provider["username"],
          snippet: 'Service Provider : ${provider['servies']}',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      ));
    });

    _updatePolylines();
  }


  void _updatePolylines() {
    _polylines.clear(); // تأكد من مسح الخطوط القديمة قبل إضافة الجديدة

    // حساب الاتجاهات والمسافة بين النقاط
    List<LatLng> points = [_currentPosition, _selectedProvider["location"]];

    Polyline polyline = Polyline(
      polylineId: PolylineId('route'),
      color: Colors.blue,
      width: 5,
      points: points,
    );

    setState(() {
      _polylines.add(polyline);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Providers Map'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: _initialPosition,
          zoom: 12,
        ),
        markers: _markers,
        polylines: _polylines,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
