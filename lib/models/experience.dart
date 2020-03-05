import 'package:flutter/material.dart';

class Experience {
  final DateTime startDate;
  final DateTime endDate;
  final String company;
  final String city;
  final String title;
  final String desription;
  final String link;

  const Experience({
    this.startDate,
    this.endDate,
    this.company,
    this.city,
    @required this.title,
    @required this.desription,
    this.link,
  });
}
