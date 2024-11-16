import 'package:flutter/material.dart';
import 'package:gdc_test/screen/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner here
      home: Home(),
    );
  }
}
