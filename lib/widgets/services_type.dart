
import 'package:flutter/material.dart';
import 'package:roadside_assitance/widgets/custom_service_card.dart';

class servicesType extends StatelessWidget {
  const servicesType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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