import 'package:flutter/material.dart';

class Soru extends StatelessWidget {
  String soru;

  Soru({this.soru});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: (Text(
        soru,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}
