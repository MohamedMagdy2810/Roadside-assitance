
import 'package:flutter/material.dart';

class customTextRow extends StatelessWidget {
  const customTextRow({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
                 child: Container(
                     margin:
                         const EdgeInsets.only(left: 10.0, right: 20.0),
                     child: const Divider(
                       color: Color(0XFF4C6D3B),
                       height: 36,
                       thickness: 1,
                     )),
               ),
                SizedBox(height: 20,
                 child:  Text(title,
                     style: const TextStyle(
                         fontSize: 14, color: Color(0XFF4C6D3B))),
               ),
               Expanded(
                 child: Container(
                     margin:
                         const EdgeInsets.only(left: 20.0, right: 10.0),
                     child: const Divider(
                       color: Color(0XFF4C6D3B),
                       height: 36,
                       thickness: 1,
                     )),
               ),
      ],
    );
  }
}
