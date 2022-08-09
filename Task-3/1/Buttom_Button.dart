import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({this.Titletext, this.func});
  final String Titletext;
  final Function func;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        child: Center(
          child: Text(
            Titletext,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        color: kbottomcolor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: khofbottom,
      ),
    );
  }
}
