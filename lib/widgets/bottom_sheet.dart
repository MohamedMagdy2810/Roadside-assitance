import 'package:flutter/material.dart';
import 'package:roadside_assitance/constants.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';
import 'package:roadside_assitance/widgets/custom_text_field.dart';
import 'package:roadside_assitance/widgets/map.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  TimeOfDay selectedTime = TimeOfDay.now();
  TextEditingController _timeController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  var from_controller = TextEditingController();
  var to_controller = TextEditingController();
  final bottomSheet_formKey = GlobalKey<FormState>();


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timeController.text = _formatTime(selectedTime);
      _dateController.text = _formatDate(DateTime.now());
    });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
        _timeController.text = _formatTime(selectedTime);
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = _formatDate(picked);
      });
    }
  }

  String _formatTime(TimeOfDay time) {
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    final format = MaterialLocalizations.of(context).formatTimeOfDay(time, alwaysUse24HourFormat: false);
    return format;
  }

  String _formatDate(DateTime date) {
    return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    
    return Form(
      key: bottomSheet_formKey,
      child: Padding(
        padding: EdgeInsets.only(
          right: 16.0,
          left: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
             
              CustomTextField(
                on_Tap: () {
                  setState(() {
                    from_controller.text = cxx.toString() ; 
                    Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapScreen(),
                  ),
                 
              );
                  });
                 
                },
                hintText: 'From',
                controller:from_controller ,
                height: 45,
                validation: (value) {
                        if (value == null || value.isEmpty) {
                          return "please Enter Location";
                        }
                        return null;
                      },
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                on_Tap: () {
                  setState(() {
                    to_controller.text = cxx.toString() ; 
                    Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapScreen(),
                  ),
                 
              );
                  });
                 
                },
                hintText: 'To',
                controller: to_controller,
                height: 45,
                validation: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Location";
                        }
                        return null;
                      },
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 45,
                child: TextFormField(
                  validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please Choose Time";
                        }
                        return null;
                      },
                  controller: _timeController,
                  readOnly: true,
                  onTap: () => _selectTime(context),
                  decoration: InputDecoration(
                    hintText: selectedTime == null ? 'Select Time' : '',
                    hintStyle: TextStyle(color: const Color(0xff2B5F1D).withOpacity(.45), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: KprimaryColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: KprimaryColor)),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: KprimaryColor)),
                    suffixIcon: Icon(Icons.access_time, color: Color(0xff2B5F1D).withOpacity(.45)),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 45,
                child: TextFormField(
                  validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Choose Data";
                        }
                        return null;
                      },
                  controller: _dateController,
                  readOnly: true,
                  onTap: () => _selectDate(context),
                  decoration: InputDecoration(
                    hintText: 'Select Date',
                    hintStyle: TextStyle(color: const Color(0xff2B5F1D).withOpacity(.45), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: KprimaryColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: KprimaryColor)),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: KprimaryColor)),
                    suffixIcon: Icon(Icons.calendar_today, color: Color(0xff2B5F1D).withOpacity(.45)),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              customButton(
                onTap: () {
                  if (bottomSheet_formKey.currentState!.validate()) {}
                },
                text: 'Send request'),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
