import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:roadside_assitance/classes/shared_preferences.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/generated/l10n.dart';
import 'package:roadside_assitance/models/service_model.dart';
import 'package:roadside_assitance/views/register_page.dart';
import 'package:roadside_assitance/views/services_page.dart';
import 'package:roadside_assitance/widgets/home_view_body.dart';
import 'package:roadside_assitance/views/profile_view.dart';
import 'package:roadside_assitance/views/sttings_view.dart';
import 'package:roadside_assitance/widgets/no_data_body.dart';

// Future<Position> user_location =  Geolocator.getCurrentPosition();
double ?user_lati ;
double ?user_long ;
class homeView extends StatefulWidget {
  const homeView({super.key});
  static String Id = 'homePage';
  
  

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  List<Widget> widgetsList = [
    // serviceModel ==null ? const homeViewBody() :
     homeViewBody(),
    profileView(), const SettingsView()
  ];
  int selectedIndex = 0;
  String? firstName;
  double ?user_lati ;
  double ?user_long ;
  

  

  @override
  void initState() {
    super.initState();
    _loadFirstName();
    // getCurrentLocation();
  
    
  }
  // getCurrentLocation() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     print('Location services are disabled.');
  //   }
  //   permission = await Geolocator.checkPermission();

  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       print('Location permissions are denied');
  //     }
  //   }
  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error(
  //         'Location permissions are permanently denied, we cannot request permissions.');
  //   }

  //   if (permission == LocationPermission.whileInUse) {
  //    Position pos = await Geolocator.getCurrentPosition();
  //    user_lati = pos.altitude;
  //    user_long = pos.longitude;
  //     print("Current_latitude : ${user_lati}");
  //     print("Current_longitude : ${user_long}");

  //   }
  // }
  Future<void> _loadFirstName() async {
    final name = await userManager.getName();
    setState(() {
      firstName = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding:
              const EdgeInsets.only(top: 36, bottom: 20, left: 250, right: 16),
          child: Container(
            width: 50,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const SizedBox(width: 8),
                const Icon(FontAwesomeIcons.circleUser),
                const SizedBox(width: 8),
                Text(
                  'Hi ${firstName ?? ''}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color(0xff275217),
      ),
      body: Column(
        children: [widgetsList.elementAt(selectedIndex)],
      ),
      bottomNavigationBar: bottomNavigatorBar(),
    );
  }

  BottomNavigationBar bottomNavigatorBar() {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
          print(user_lati);
          print(user_long);
        });
      },
      selectedItemColor: KprimaryColor,
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: S.of(context).home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label:  S.of(context).profile,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label:  S.of(context).setting,
        ),
      ],
    );
  }
}
