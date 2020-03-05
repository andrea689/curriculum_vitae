import 'package:curriculum_vitae/components/flyer.dart';
import 'package:curriculum_vitae/components/two_side_layout.dart';
import 'package:curriculum_vitae/pages/sections/main_section.dart';
import 'package:curriculum_vitae/pages/sections/side_section.dart';
import 'package:curriculum_vitae/pages/sections/title_section.dart';
import 'package:curriculum_vitae/repositories/resume_repository.dart';
import 'package:curriculum_vitae/utils/MyColors.dart';
import 'package:curriculum_vitae/utils/MyTextStyles.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  final ResumeRepository _resumeRepository;

  const FrontPage({
    Key key,
    ResumeRepository resumeRepository,
  })  : _resumeRepository = resumeRepository ?? const ResumeRepository(),
        super(key: key);

  Widget build(BuildContext context) {
    return Flyer(
      color: MyColors.background,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: TwoSideLayout(
                  leftChild: Image(
                    image: AssetImage('images/me.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  TwoSideLayout(
                    rightChild: TitleSection(),
                  ),
                  TwoSideLayout(
                    leftChild: Container(
                      color: MyColors.accent60,
                      padding: EdgeInsets.only(top: 20, right: 20, left: 80),
                      child: Text(
                        'PROFESSIONAL PROFILE ',
                        style: MyTextStyles.sideTopTitle,
                        textAlign: TextAlign.right,
                      ),
                    ),
                    rightChild: Container(
                      color: MyColors.accent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Text(
                        _resumeRepository.getProfessionalProfile(),
                        style: MyTextStyles.mainBodyOnAccent,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          TwoSideLayout(
            leftChild: Container(
              padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
              color: MyColors.primary,
              child: SideSection(),
            ),
            rightChild: Padding(
              padding: EdgeInsets.only(top: 20, left: 40, bottom: 20),
              child: MainSection(),
            ),
          ),
        ],
      ),
    );
  }
}
