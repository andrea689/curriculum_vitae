import 'dart:math';

import 'package:flutter/material.dart';

class FlipRoute extends PageRouteBuilder {
  final Widget enterPage;
  final RouteSettings settings;
  FlipRoute({this.enterPage, this.settings})
      : super(
            pageBuilder: (context, __, ___) => enterPage,
            transitionDuration: Duration(seconds: 2),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.002)
                  ..rotateY(animation.value >= 0.5 ? (animation.value + 1) * pi : 3 / 2 * pi),
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.002)
                    ..rotateY(secondaryAnimation.value < 0.5 ? secondaryAnimation.value * pi : pi / 2),
                  child: child,
                ),
              );
            });
}
