import 'package:flutter/material.dart';
import 'package:textfield/formfield.dart';
import 'package:textfield/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),

      home: DateTimePicker(),
      
    );
  }
}

