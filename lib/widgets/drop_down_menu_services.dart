import 'package:flutter/material.dart';
import 'package:roadside_assitance/constants.dart';

class custom_drop_down_menu extends StatefulWidget {
  @override
  _custom_drop_down_menuState createState() => _custom_drop_down_menuState();
}

class _custom_drop_down_menuState extends State<custom_drop_down_menu> {
  List<String> _selectedServices = [];
  final List<String> _services = [
    'fuel & oil service',
    'tire repair',
    'battery changing',
    'towing',
    'car mechanic'
  ];

  void _showMultiSelectDialog(BuildContext context) async {
    final selectedServices = await showDialog<List<String>>(
      context: context,
      builder: (BuildContext context) {
        return _MultiSelectDialog(
          
          items: _services,
          initialSelectedItems: _selectedServices,
        );
      },
    );

    if (selectedServices != null) {
      setState(() {
        _selectedServices = selectedServices;
        print(selectedServices);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        GestureDetector(
          onTap: () {
            _showMultiSelectDialog(context);
          },
          child: Row(
            children: [
              Container(
                height: 50,
                width: 230,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: KprimaryColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedServices.isEmpty
                          ? 'Select services'
                          : _selectedServices.join(', '),
                      style: TextStyle(color:const Color(0xff2B5F1D).withOpacity(.45),fontSize: 16,fontWeight: FontWeight.w500),
                    ),
                    Icon(Icons.arrow_drop_down,color: KprimaryColor,size: 24,),
                  ],
                ),
              ),
              SizedBox(width: 8,),
              Container(
                child: Center(child: Text('Add',style: TextStyle(fontSize: 18,color: Colors.white),)),
                height: 40,
                width: 65,
                decoration: BoxDecoration(color: Color(0xff275217)
                ,borderRadius: BorderRadius.circular(12)),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _MultiSelectDialog extends StatefulWidget {
  final List<String> items;
  final List<String> initialSelectedItems;

  _MultiSelectDialog({required this.items, required this.initialSelectedItems});

  @override
  __MultiSelectDialogState createState() => __MultiSelectDialogState();
}

class __MultiSelectDialogState extends State<_MultiSelectDialog> {
  List<String> _selectedItems = [];

  @override
  void initState() {
    super.initState();
    _selectedItems = widget.initialSelectedItems;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text('Select Services',style: TextStyle(color:const Color(0xff2B5F1D).withOpacity(.45),fontSize: 15),),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items.map((item) {
            return CheckboxListTile(
              
              activeColor: Colors.white,
              checkColor: KprimaryColor,
              // fillColor: ,
              value: _selectedItems.contains(item),
              title: Text(item,style: TextStyle(color:const Color(0xff2B5F1D).withOpacity(.45),fontSize: 15),),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: ( selected) {
                setState(() {
                  if (selected!) {
                    _selectedItems.add(item);
                  } else {
                    _selectedItems.remove(item);
                  }
                });
              },
            );
          }).toList(),
        ),
      ),
      actions: [
        TextButton(
          child: Text('Cancel',style: TextStyle(color:const Color(0xff2B5F1D).withOpacity(.45),fontSize: 15),),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('OK',style: TextStyle(color:const Color(0xff2B5F1D).withOpacity(.45),fontSize: 15),),
          onPressed: () {
            Navigator.of(context).pop(_selectedItems);
          },
        ),
      ],
    );
  }
}