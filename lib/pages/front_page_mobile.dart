import 'package:curriculum_vitae/components/flyer.dart';
import 'package:curriculum_vitae/pages/sections/main_section.dart';
import 'package:curriculum_vitae/pages/sections/side_section.dart';
import 'package:curriculum_vitae/pages/sections/title_section.dart';
import 'package:curriculum_vitae/repositories/resume_repository.dart';
import 'package:curriculum_vitae/utils/MyColors.dart';
import 'package:curriculum_vitae/utils/MyTextStyles.dart';
import 'package:flutter/material.dart';

class FrontPageMobile extends StatelessWidget {
  final ResumeRepository _resumeRepository;

  const FrontPageMobile({
    Key key,
    ResumeRepository resumeRepository,
  })  : _resumeRepository = resumeRepository ?? const ResumeRepository(),
        super(key: key);

  Widget build(BuildContext context) {
    return Flyer(
      color: MyColors.background,
      mobile: true,
      child: Column(
        children: <Widget>[
          TitleSection(),
          Container(
            color: MyColors.accent,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              children: <Widget>[
                Text(
                  'PROFESSIONAL PROFILE ',
                  style: MyTextStyles.sideTopTitle,
                  textAlign: TextAlign.right,
                ),
                Text(
                  _resumeRepository.getProfessionalProfile(),
                  style: MyTextStyles.mainBodyOnAccent,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 40, bottom: 20),
              child: MainSection()),
          Container(
              padding: EdgeInsets.only(top: 20, right: 40, bottom: 20),
              color: MyColors.primary,
              child: SideSection()),
        ],
      ),
    );
  }
}
