import 'package:curriculum_vitae/components/main_title.dart';
import 'package:curriculum_vitae/utils/MyColors.dart';
import 'package:curriculum_vitae/utils/MyTextStyles.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection();

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      color: MyColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MainTitle('ANDREA VALENZANO'),
          Padding(
            padding: EdgeInsets.only(left: 40, bottom: 20),
            child: Container(
              color: MyColors.primary,
              padding: EdgeInsets.only(left: 16, top: 4, bottom: 4),
              child: Text(
                'SOFTWARE ENGINEER',
                style: MyTextStyles.subtitle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
