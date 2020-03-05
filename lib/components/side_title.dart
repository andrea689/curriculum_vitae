import 'package:curriculum_vitae/utils/MyColors.dart';
import 'package:curriculum_vitae/utils/MyTextStyles.dart';
import 'package:flutter/material.dart';

class SideTitle extends StatelessWidget {
  final String title;

  SideTitle(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: MyTextStyles.sideTopTitleAccent,
                    textAlign: TextAlign.right,
                  ),
                  Container(
                    height: 2,
                    color: MyColors.accent,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 2,
            color: MyColors.accent,
          ),
        ],
      ),
    );
  }
}
