import "package:flutter/material.dart";
import './soru.dart';
import './cevaplar.dart';
import './quiz.dart';
import './sonuc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var soruNumarasi = 0;
  var toplamSkor = 0;

  @override
  Widget build(BuildContext context) {
    const soruListesi = [
      {
        "soru": "Aşağıdaki hayvanlardan en çok hangisini seversin?",
        "cevaplar": [
          {"text": "Kedi", "puan": 10},
          {"text": "Köpek", "puan": 6},
          {"text": "Yarasa", "puan": 3}
        ]
      },
      {
        "soru": "Aşağıdaki yemeklerden en çok hangisini seversin?",
        "cevaplar": [
          {"text": "Hamburger", "puan": 10},
          {"text": "Pizza", "puan": 6},
          {"text": "Makarna", "puan": 3}
        ]
      },
      {
        "soru": "Aşağıdaki derslerden en çok hangisini seversin?",
        "cevaplar": [
          {"text": "Matematik", "puan": 10},
          {"text": "Fizik", "puan": 6},
          {"text": "Tarih", "puan": 3}
        ]
      },
      {
        "soru": "En sevdiğin youtube kanallı hangisidir?",
        "cevaplar": [
          {"text": "Uzaktan Akademii", "puan": 10},
          {"text": "Uzaktann Akademi", "puan": 10},
          {"text": "Uzaktan Akademiii", "puan": 10}
        ]
      }
    ];

    void soruCevabi(int skor) {
      toplamSkor += skor;

      setState(() {
        soruNumarasi++;
      });

      //soruNumarasi = soruNumarasi + 1;
      print(soruNumarasi);
    }

    void restart() {
      setState(() {
        soruNumarasi = 0;
      });
      toplamSkor = 0;
    }

    final toplamSoruSayisi = soruListesi.length;
    //(şart) ? widget : widget
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("İlk Uygulamam"),
            centerTitle: true,
          ),
          body: soruNumarasi < toplamSoruSayisi
              ? Quiz(
                  soruListesi: soruListesi,
                  soruNumarasi: soruNumarasi,
                  soruCevabi: soruCevabi)
              : Sonuc(skor: toplamSkor, reset: restart)),
    );
  }
}
