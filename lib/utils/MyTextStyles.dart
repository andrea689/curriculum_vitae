import 'package:curriculum_vitae/utils/MyColors.dart';
import 'package:flutter/material.dart';

class MyTextStyles {
  static num _webFactor = 1.2;
  static TextStyle title = TextStyle(
    color: MyColors.primary,
    fontSize: 34 * _webFactor,
    fontFamily: 'PlayfairDisplay',
  );
  static TextStyle subtitle = TextStyle(
    color: MyColors.accent,
    fontSize: 13 * _webFactor,
    letterSpacing: 5.6,
  );
  static TextStyle mainTopTitle = TextStyle(
    color: MyColors.primary,
    fontWeight: FontWeight.w500,
    fontSize: 20 * _webFactor,
  );
  static TextStyle mainTitle = TextStyle(
    color: MyColors.primary,
    fontWeight: FontWeight.w700,
    fontSize: 16 * _webFactor,
  );
  static TextStyle mainSubtitle = TextStyle(
    color: MyColors.primary70,
    fontSize: 11 * _webFactor,
  );
  static TextStyle mainBody = TextStyle(
    color: MyColors.primary,
    fontSize: 12 * _webFactor,
  );
  static TextStyle mainBodyOnAccent = TextStyle(
    color: MyColors.background,
    fontSize: 12 * _webFactor,
  );
  static TextStyle sideTopTitleAccent = TextStyle(
    color: MyColors.accent,
    fontWeight: FontWeight.w500,
    fontSize: 15 * _webFactor,
  );
  static TextStyle sideTopTitle = TextStyle(
    color: MyColors.background,
    fontWeight: FontWeight.w500,
    fontSize: 15 * _webFactor,
  );
  static TextStyle sideTitle = TextStyle(
    color: MyColors.background,
    fontWeight: FontWeight.w500,
    fontSize: 13 * _webFactor,
  );
  static TextStyle sideBody = TextStyle(
    color: MyColors.background,
    fontSize: 12 * _webFactor,
  );
}
