import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Widget? child;
  const PositionedWidget({Key? key, this.top, this.bottom, this.left, this.right,this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned
      (
        top: top,
        left: left,
        right: right,
        bottom: bottom,
        child: child!
    );
  }
}
