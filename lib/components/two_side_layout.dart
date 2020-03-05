import 'package:flutter/material.dart';

class TwoSideLayout extends StatelessWidget {
  final Widget leftChild;
  final Widget rightChild;

  TwoSideLayout({
    this.leftChild,
    this.rightChild,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: leftChild ?? Container(),
          ),
          Expanded(
            flex: 2,
            child: rightChild ?? Container(),
          ),
        ],
      ),
    );
  }
}
