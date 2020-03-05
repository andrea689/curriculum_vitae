import 'dart:html';

import 'package:curriculum_vitae/utils/MyTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SideItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String link;

  SideItem(this.title, this.subtitle, [this.link]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: MouseRegion(
        onHover: (_) {
          if (link != null) {
            document.body.style.cursor = 'pointer';
          }
        },
        onExit: (_) {
          document.body.style.cursor = 'default';
        },
        child: GestureDetector(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                title,
                style: MyTextStyles.sideTitle,
                textAlign: TextAlign.right,
              ),
              Text(
                subtitle,
                style: MyTextStyles.sideBody,
                textAlign: TextAlign.right,
              ),
            ],
          ),
          onTap: () => link == null ? null : _launchURL(link),
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
