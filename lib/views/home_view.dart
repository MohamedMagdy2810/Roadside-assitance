import 'package:flutter/material.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/views/profile_view.dart';
import 'package:roadside_assitance/views/sttings_view.dart';
import 'package:roadside_assitance/widgets/custom_service_card.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});
  static String Id = 'homePage';

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  List <Widget> widgetsList =[homeeView(),profileView(),settingsView()];
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      } ,
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
      
      ),
    
      appBar: AppBar(
        title:const Text(
          'Services type',
          style: TextStyle(fontWeight: FontWeight.bold, color: KprimaryColor),
        ),
        centerTitle: true,
      ),
      body: widgetsList.elementAt(selectedIndex),
    );
  }
}

class homeeView extends StatelessWidget {
  const homeeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return const serviseCard();
        },
        itemCount: 10,
        clipBehavior: Clip.none,
      ),
    );
  }
}
