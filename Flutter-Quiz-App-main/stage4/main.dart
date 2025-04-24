import "package:flutter/material.dart";
import './soru.dart';
import './cevaplar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var soruNumarasi = 0;

  final soruListesi = [
    "En çok hangi hayvanı seversin",
    "En çok hangi yemeği seversin",
    "En çok hangi hayvanı seversin",
    "En çok hangi yemeği seversin",
    "En çok hangi hayvanı seversin",
    "En çok hangi yemeği seversin",
    "En çok hangi hayvanı seversin",
    "En çok hangi yemeği seversin"
  ];

  void soruCevabi() {
    setState(() {
      soruNumarasi++;
    });
    //soruNumarasi = soruNumarasi + 1;
    print(soruNumarasi);
  }

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
            Soru(soru: soruListesi[soruNumarasi]),
            Cevap(soruCevabi: soruCevabi),
            Cevap(soruCevabi: soruCevabi),
            Cevap(soruCevabi: soruCevabi)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
      ),
    );
  }
}
