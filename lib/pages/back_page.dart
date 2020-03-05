import 'package:curriculum_vitae/components/flyer.dart';
import 'package:flutter/material.dart';

class BackPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Flyer(
      color: Colors.amber,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.red,
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Go!'),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
              Text('ciao'),
            ],
          ),
        ],
      ),
    );
  }
}
