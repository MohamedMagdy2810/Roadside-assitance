import 'package:flutter/material.dart';

class custom_drop_down_menu extends StatelessWidget {
  const custom_drop_down_menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const DropdownMenu(
      menuStyle: MenuStyle(
        
      ),
        hintText: "Service type",
        width: 200,
        menuHeight: 200,
        dropdownMenuEntries: <DropdownMenuEntry>[
          DropdownMenuEntry(value: (), label: "Fuel station"),
          DropdownMenuEntry(value: (), label: "tire repair"),
          DropdownMenuEntry(value: (), label: "battery changing"),
          DropdownMenuEntry(value: (), label: "towing"),
          DropdownMenuEntry(value: (), label: "towing"),
          DropdownMenuEntry(value: (), label: "towing"),
          DropdownMenuEntry(value: (), label: "towing"),
        ]);
  }
}
