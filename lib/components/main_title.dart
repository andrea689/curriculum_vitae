import 'package:curriculum_vitae/utils/MyTextStyles.dart';
import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;

  MainTitle(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40, left: 40),
      child: Text(
        title.replaceAll(' ', '\n'),
        style: MyTextStyles.title,
      ),
    );
  }
}
