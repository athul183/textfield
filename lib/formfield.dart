import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  final _date = TextEditingController();
  final _time = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _date,
            decoration: const InputDecoration(
              icon: Icon(CupertinoIcons.calendar),
              hintText: 'Date'
            ),
            onTap: () async{
              DateTime? pickeddate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(), 
                firstDate: DateTime(1900), 
                lastDate: DateTime(2100));
              if(pickeddate != null){
                setState(() {
                  _date.text = pickeddate.toString().split(" ")[0];
                });
              }
            },
          ),
          TextFormField(
            controller: _time,
            decoration: const InputDecoration(
              icon: Icon(CupertinoIcons.clock),
              hintText: 'Time'
            ),
            onTap: () async{
              final TimeOfDay? pickedtime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
               );
              if(pickedtime != null){
                setState(() {
                  _time.text = pickedtime.format(context).toString();
                });
              }
            },
          ),
        ],
      ),
    );
  }
}