import 'package:curriculum_vitae/components/nested_navigator.dart';
import 'package:curriculum_vitae/pages/front_page_mobile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/desk.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraint) {
              if (constraint.maxWidth < 800) {
                return FrontPageMobile();
              } else {
                return Container(
                  width: 800,
                  child: NestedNavigator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
