import 'package:flutter/material.dart';

class Flyer extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool mobile;

  Flyer({
    @required this.child,
    this.color = Colors.white,
    this.mobile = false,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: mobile ? null : EdgeInsets.all(50),
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
