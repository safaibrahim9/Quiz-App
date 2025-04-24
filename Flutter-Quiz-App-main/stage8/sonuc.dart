import 'package:flutter/material.dart';

class Sonuc extends StatelessWidget {
  int skor;
  Function reset;

  Sonuc({this.skor, this.reset});

  Widget skorBasligi(int skor) {
    if (skor > 30)
      return Text("Harikasın!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30));
    else if (skor <= 30 && skor > 25)
      return Text("Normalsin!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30));
    else
      return Text("Biraz garipsin!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(child: skorBasligi(skor)),
        RaisedButton(child: Text("Tekrar Dene !"), onPressed: reset),
      ],
    ));
  }
}
