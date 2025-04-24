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

  void soruCevabi() {
    setState(() {
      soruNumarasi++;
    });
    //soruNumarasi = soruNumarasi + 1;
    print(soruNumarasi);
  }

  @override
  Widget build(BuildContext context) {
    const soruListesi = [
      {
        "soru": "Aşağıdaki hayvanlardan en çok hangisini seversin?",
        "cevaplar": ["Kedi", "Köpek", "Yarasa"]
      },
      {
        "soru": "Aşağıdaki yemeklerden en çok hangisini seversin?",
        "cevaplar": ["Hamburger", "Pizza", "Makarna"]
      },
      {
        "soru": "Aşağıdaki derslerden en çok hangisini seversin?",
        "cevaplar": ["Matematik", "Fizik", "Tarih"]
      },
      {
        "soru": "En sevdiğin youtube kanallı hangisidir?",
        "cevaplar": [
          "Uzaktan Akademi",
          "Uzaktannn Akademii",
          "Uzaktann Aaakademi"
        ]
      }
    ];

    final toplamSoruSayisi = soruListesi.length;
    //(şart) ? widget : widget
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("İlk Uygulamam"),
            centerTitle: true,
          ),
          body: soruNumarasi < toplamSoruSayisi
              ? Column(
                  children: [
                    Soru(soru: soruListesi[soruNumarasi]["soru"]),
                    ...(soruListesi[soruNumarasi]["cevaplar"] as List<String>)
                        .map((cevap) {
                      return Cevap(
                        soruCevabi: soruCevabi,
                        cevapTexti: cevap,
                      );
                    }).toList()
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                )
              : Container(child: Text("Sonuç Sayfası"))),
    );
  }
}
