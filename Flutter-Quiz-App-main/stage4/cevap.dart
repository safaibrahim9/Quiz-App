import 'package:flutter/material.dart';

class Cevap extends StatelessWidget {
  Function soruCevabi;

  Cevap({this.soruCevabi});

  @override
  Widget build(BuildContext context) {
    return (RaisedButton(child: Text("Buton1"), onPressed: soruCevabi));
  }
}
