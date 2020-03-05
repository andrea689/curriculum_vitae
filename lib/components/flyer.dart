import 'package:flutter/material.dart';

class Flyer extends StatelessWidget {
  final Widget child;
  final Color color;

  Flyer({
    @required this.child,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(50),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: color,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(4.0, 6.0),
                blurRadius: 10,
              )
            ],
          ),
          width: 800,
          child: child,
        ),
      ),
    );
  }
}
