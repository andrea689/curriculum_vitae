import 'package:curriculum_vitae/components/side_item.dart';
import 'package:curriculum_vitae/components/side_title.dart';
import 'package:curriculum_vitae/components/skill.dart';
import 'package:curriculum_vitae/repositories/resume_repository.dart';
import 'package:flutter/material.dart';

class SideSection extends StatelessWidget {
  final ResumeRepository _resumeRepository;

  const SideSection({
    Key key,
    ResumeRepository resumeRepository,
  })  : _resumeRepository = resumeRepository ?? const ResumeRepository(),
        super(key: key);

  Widget build(BuildContext context) {
    final openSourceProjects = _resumeRepository
        .getOpenSourceProjects()
        .map((e) => SideItem(e.title, e.desription, e.link))
        .toList();

    return Column(
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
    );
  }
}
