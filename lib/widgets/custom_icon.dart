import 'package:flutter/material.dart';

class customSearchIcon extends StatelessWidget {
  const customSearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(2, 4),
            )
          ]),
      child: Center(
        child: Icon(
          icon,
          size: 24,
        ),
      ),
    );
  }
}
