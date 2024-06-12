import 'package:flutter/material.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/models/service_model.dart';
import 'package:roadside_assitance/widgets/bottom_sheet.dart';
import 'package:roadside_assitance/widgets/custom_service_card.dart';

class ServivesView extends StatelessWidget {
  ServivesView({super.key});
  static String ID = 'servicsPage';
  final List<servicesCard> services = [
    servicesCard(
      service_model: serviceModel(
        name: 'locked',
        image: 'assets/images/locked.png',
      ),
    ),
    servicesCard(
        service_model: serviceModel(
            name: 'Low fuel', image: 'assets/images/low_fuel.png')),
    servicesCard(
        service_model:
            serviceModel(name: 'Repair', image: 'assets/images/Repair.png')),
    servicesCard(
        service_model: serviceModel(
            name: 'Flat tire', image: 'assets/images/flat_tire.png')),
    servicesCard(
        service_model: serviceModel(
            name: 'Engine oil', image: 'assets/images/engine_oil.png')),
    servicesCard(
        service_model: serviceModel(
            name: 'Break down', image: 'assets/images/break_down.png')),
    servicesCard(
        service_model: serviceModel(
            name: 'Battery dead', image: 'assets/images/battery_dead.png')),
    servicesCard(
        service_model: serviceModel(
            name: 'Engine heat', image: 'assets/images/engine_heat.png')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text(
          'select service type',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor:const  Color(0xff344D16),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2.6,
            crossAxisCount: 2, // Display two items per row
          ),
          itemCount: services.length,
          itemBuilder: (context, index) {
            return services[index];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          isScrollControlled: true,
          context: context, builder: (context){
          return const BottomSheetWidget();
        });
      },
      backgroundColor: KprimaryColor,
      child:Image.asset('assets/images/towing.png',height: 32,),),
    );
  }
}
