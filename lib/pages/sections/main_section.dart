import 'package:curriculum_vitae/components/section_item.dart';
import 'package:curriculum_vitae/components/section_title.dart';
import 'package:curriculum_vitae/repositories/resume_repository.dart';
import 'package:flutter/material.dart';

class MainSection extends StatelessWidget {
  final ResumeRepository _resumeRepository;

  const MainSection({
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionTitle('EXPERIENCE'),
        ...experiences,
        SectionTitle('EDUCATION'),
        ...educations,
        SectionTitle('VOLUNTEERING'),
        ...voluntering,
      ],
    );
  }
}
