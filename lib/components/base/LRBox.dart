import 'package:flutter/material.dart';

class LRBox extends StatelessWidget {
  LRBox({this.left, this.right});
  final Widget left;
  final Widget right;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        left,
        right
      ],
    );
  }
}