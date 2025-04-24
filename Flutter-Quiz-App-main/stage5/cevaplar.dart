import 'package:flutter/material.dart';

class Cevap extends StatelessWidget {
  Function soruCevabi;
  String cevapTexti;

  Cevap({this.soruCevabi, this.cevapTexti});

  @override
  Widget build(BuildContext context) {
    return (RaisedButton(child: Text(cevapTexti), onPressed: soruCevabi));
  }
}
