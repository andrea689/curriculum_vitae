import 'package:curriculum_vitae/utils/MyColors.dart';
import 'package:curriculum_vitae/utils/MyTextStyles.dart';
import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  final String name;

  Skill(
    this.name,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.accent,
        borderRadius: BorderRadius.circular(3),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: Text(
        name,
        style: MyTextStyles.mainBody,
      ),
    );
  }
}
