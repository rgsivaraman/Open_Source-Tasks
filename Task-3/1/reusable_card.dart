import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.card_child});
  final Color colour;
  final Widget card_child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: card_child,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: colour),
    );
  }
}
