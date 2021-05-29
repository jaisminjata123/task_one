import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(
          primaryColor: Color(0xFF000000),scaffoldBackgroundColor: Color(0xFF000000)
      ),
      home: HomePage(),
    );
  }
}