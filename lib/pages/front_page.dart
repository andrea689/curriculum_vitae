import 'package:curriculum_vitae/components/flyer.dart';
import 'package:curriculum_vitae/components/main_title.dart';
import 'package:curriculum_vitae/components/section_item.dart';
import 'package:curriculum_vitae/components/section_title.dart';
import 'package:curriculum_vitae/components/side_item.dart';
import 'package:curriculum_vitae/components/side_title.dart';
import 'package:curriculum_vitae/components/skill.dart';
import 'package:curriculum_vitae/components/two_side_layout.dart';
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
    final experiences =
        _resumeRepository.getExperiences().map((e) => SectionItem(e)).toList();
    final educations =
        _resumeRepository.getEducations().map((e) => SectionItem(e)).toList();
    final voluntering =
        _resumeRepository.getVoluntering().map((e) => SectionItem(e)).toList();
    final openSourceProjects = _resumeRepository
        .getOpenSourceProjects()
        .map((e) => SideItem(e.title, e.desription, e.link))
        .toList();

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
                    rightChild: Container(
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
                              padding:
                                  EdgeInsets.only(left: 16, top: 4, bottom: 4),
                              child: Text(
                                'SOFTWARE ENGINEER',
                                style: MyTextStyles.subtitle,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SideTitle('CONTACT'),
                  SideItem(
                    'Email',
                    'valenzano.andrea@gmail.com',
                    'mailto:valenzano.andrea@gmail.com',
                  ),
                  SideItem(
                    'Website',
                    'https://andrea689.github.io',
                    'http://bit.ly/website-resume-web',
                  ),
                  SideItem(
                    'GitHub',
                    'andrea689',
                    'http://bit.ly/github-resume-web',
                  ),
                  SideItem(
                    'LinkedIn',
                    'andreavalenzano',
                    'http://bit.ly/linkedin-resume-web',
                  ),
                  SideTitle('SKILLS'),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      spacing: 6,
                      runSpacing: 5,
                      children: <Widget>[
                        Skill('Flutter'),
                        Skill('Android'),
                        Skill('iOS'),
                        Skill('REST'),
                        Skill('Node'),
                        Skill('Mapbox'),
                        Skill('Firebase'),
                        Skill('CI/CD'),
                        Skill('Git'),
                        Skill('MongoDB'),
                        Skill('PostgreSQL'),
                        Skill('PostGIS'),
                        Skill('Tegola'),
                        Skill('OSRM'),
                        Skill('Azure'),
                        Skill('GCP'),
                        Skill('DataStudio'),
                      ],
                    ),
                  ),
                  SideTitle('LANGUAGES'),
                  SideItem('Italian', 'Native proficiency'),
                  SideItem('English', 'Limited working proficiency (B1)'),
                  SideTitle('OPEN SOURCE'),
                  ...openSourceProjects,
                ],
              ),
            ),
            rightChild: Padding(
              padding: EdgeInsets.only(top: 20, left: 40, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SectionTitle('EXPERIENCE'),
                  ...experiences,
                  SectionTitle('EDUCATION'),
                  ...educations,
                  SectionTitle('VOLUNTEERING'),
                  ...voluntering,
                  /*
                  RaisedButton(
                    child: Text('Go!'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/back');
                    },
                  ),
                  */
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
