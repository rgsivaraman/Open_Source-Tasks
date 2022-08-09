import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconBotton extends StatelessWidget {
  IconBotton({this.child, this.func});

  final IconData child;
  final Function func;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(child),
      onPressed: func,
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      fillColor: kbottomcolor,
      shape: CircleBorder(),
    );
  }
}
