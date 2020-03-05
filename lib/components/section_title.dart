import 'package:curriculum_vitae/utils/MyColors.dart';
import 'package:curriculum_vitae/utils/MyTextStyles.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: MyTextStyles.mainTopTitle,
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    height: 2,
                    color: MyColors.primary,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 2,
            color: MyColors.primary,
          ),
        ],
      ),
    );
  }
}
