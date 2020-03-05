import 'package:curriculum_vitae/models/experience.dart';
import 'package:curriculum_vitae/utils/MyTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SectionItem extends StatelessWidget {
  final Experience experience;

  SectionItem(
    this.experience,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 40,
        bottom: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (experience.company != null)
            Text(
              '${_getStartDate()} - ${_getEndDate()}  |  ${experience.company} - ${experience.city}',
              style: MyTextStyles.mainSubtitle,
            ),
          Text(
            experience.title,
            style: MyTextStyles.mainTitle,
          ),
          Text(
            experience.desription,
            textAlign: TextAlign.justify,
            style: MyTextStyles.mainBody,
          ),
        ],
      ),
    );
  }

  String _getStartDate() {
    return DateFormat('MM/yyyy').format(experience.startDate);
  }

  String _getEndDate() {
    if (experience.endDate == null) {
      return 'present';
    }
    return DateFormat('MM/yyyy').format(experience.endDate);
  }
}
