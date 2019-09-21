import 'package:flutter/material.dart';

class LCRBox extends StatelessWidget {
  LCRBox({this.left, this.center, this.right});
  final Widget left;
  final Widget center;
  final Widget right;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        left,
        center,
        right
      ],
    );
  }
}