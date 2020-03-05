import 'package:curriculum_vitae/pages/home_page.dart';
import 'package:curriculum_vitae/utils/MyTextStyles.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume - Andrea Valenzano',
      theme: ThemeData(
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          bodyText2: MyTextStyles.mainBody,
        ),
      ),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: NoGlowingScrollBehavior(),
          child: child,
        );
      },
      initialRoute: '/',
      onGenerateRoute: (RouteSettings routeSettings) {
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => HomePage(),
        );
      },
    );
  }
}

class NoGlowingScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
