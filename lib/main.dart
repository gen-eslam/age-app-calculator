import 'package:flutter/material.dart';
import 'matrial/age_calc/age_calcukator.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AgeCalculator(),
    );
  }

}
