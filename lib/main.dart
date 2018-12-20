import 'package:car_rental/constants/styles.dart';
import 'package:car_rental/ui/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Styles.theme,
      home: Home(),
    );
  }
}