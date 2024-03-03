import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class customRequestWidget extends StatelessWidget {
  const customRequestWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffD9D9D9)),
        child: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            const Icon(
              FontAwesomeIcons.circleUser,
              size: 32,
            ),
            const SizedBox(
              width: 24,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Mohamed Magdy',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'Low fuel',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              width: 32,
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.check)),
            IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.x))
          ],
        ),
      ),
    );
  }
}
