import 'package:car_rental/constants/styles.dart';
import 'package:flutter/material.dart';

class GradientBg extends StatelessWidget {
  final Widget scaffold;

  GradientBg({this.scaffold});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: Styles.gradient
          ),
        ),
        this.scaffold
      ],
    );
  }
}