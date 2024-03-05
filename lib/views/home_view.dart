import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/views/register_page.dart';
import 'package:roadside_assitance/widgets/home_view_body.dart';
import 'package:roadside_assitance/views/profile_view.dart';
import 'package:roadside_assitance/views/sttings_view.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});
  static String Id = 'homePage';
  
  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  List<Widget> widgetsList = [const homeViewBody(), profileView(),const settingsView()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       flexibleSpace: Padding(
         padding: const EdgeInsets.only(top: 28,bottom: 20,left: 250,right: 16),
         child: Container(
          width: 50,
          height: 32,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
          color: Colors.white),
           child: Row(
            
            children: [
           const   SizedBox(
            width: 8,
           ),
          const Icon(FontAwesomeIcons.circleUser),
          const SizedBox(
            width: 8,
           ),
           Text('Hi $name',style:const TextStyle(
            fontWeight: FontWeight.bold
           ),)
            
           ],),
         ),
       ),
       
        backgroundColor:const Color(0xff275217),
    
      ),
      body: widgetsList.elementAt(selectedIndex),
      bottomNavigationBar: bottomNavigatorBar(),
    );
  }

  BottomNavigationBar bottomNavigatorBar() {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      selectedItemColor: KprimaryColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
