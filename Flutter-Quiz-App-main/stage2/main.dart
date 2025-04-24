import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final soruListesi = [
    "En çok hangi hayvanı seversin",
    "En çok hangi yemeği seversin"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("İlk Uygulamam"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text("İlk Sorum"),
            RaisedButton(child: Text("Buton1"), onPressed: null),
            RaisedButton(child: Text("Buton2"), onPressed: null),
            RaisedButton(child: Text("Buton3"), onPressed: null)
          ],
        ),
      ),
    );
  }
}
