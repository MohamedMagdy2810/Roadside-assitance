
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadside_assitance/widgets/custom_icon.dart';

class customIconsRow extends StatelessWidget {
  const customIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal:28.0),
      child: Row(
        
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        customSearchIcon(icon: FontAwesomeIcons.phone),
        customSearchIcon(icon: FontAwesomeIcons.facebook),
        customSearchIcon(icon: FontAwesomeIcons.google),
        customSearchIcon(icon: FontAwesomeIcons.apple),
      ],),
    );
  }
}
