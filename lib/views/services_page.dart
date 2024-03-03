import 'package:flutter/material.dart';
import 'package:roadside_assitance/widgets/custom_service_card.dart';

class ServivesView extends StatelessWidget {
  const ServivesView({super.key});
static String ID= 'servicsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
        child: GridView.builder(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return const servicesCard();
          },
          itemCount: 10,
          clipBehavior: Clip.none,
        ),
      ),
    );
  }
}