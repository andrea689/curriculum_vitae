import 'package:curriculum_vitae/components/flip_route.dart';
import 'package:curriculum_vitae/pages/back_page.dart';
import 'package:curriculum_vitae/pages/front_page.dart';
import 'package:flutter/material.dart';

class NestedNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();
  final Map<String, WidgetBuilder> routes = {
    '/': (context) => FrontPage(),
    '/back': (context) => BackPage(),
  };

  @override
  Widget build(BuildContext context) {
    var initialRoute = Navigator.of(context).widget.initialRoute;
    return WillPopScope(
      child: Navigator(
        key: _navigationKey,
        initialRoute: initialRoute,
        onGenerateRoute: (RouteSettings routeSettings) {
          WidgetBuilder builder = routes[routeSettings.name];
          if (builder != null) {
            return FlipRoute(
              enterPage: builder(context),
              settings: routeSettings,
            );
          }
          return null;
        },
      ),
      onWillPop: () {
        if (_navigationKey.currentState.canPop()) {
          _navigationKey.currentState.pop();
          return Future<bool>.value(false);
        }
        return Future<bool>.value(true);
      },
    );
  }
}
