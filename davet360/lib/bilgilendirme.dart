//***************BİLGİLENDİRME 1. SAYFASI ***********************

import 'package:flutter/material.dart';

class Bilgilendirme extends StatefulWidget {
  @override
  _BilgilendirmeState createState() => _BilgilendirmeState();
}

class _BilgilendirmeState extends State<Bilgilendirme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/onbilgi1.png"),
              ),
              Text(
                "Etkinlikleri Listele",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Senin veya arkadaşlarının oluşturdukları etkinlikleri görebilir ve detaylarını inceleyebilirsin.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Bilgilendirme2(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 350,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Devam",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Atla"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//***************BİLGİLENDİRME 2. SAYFASI ***********************

class Bilgilendirme2 extends StatefulWidget {
  @override
  _Bilgilendirme2State createState() => _Bilgilendirme2State();
}

class _Bilgilendirme2State extends State<Bilgilendirme2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey[200]),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/onbilgi2.png"),
              ),
              Text(
                "Bir Etkinlikliğe Katıl",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Etkinlik detayından katılıp katılmayacağını seçerek etkinlik sahibini önceden bilgilendirebilirsin.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Bilgilendirme3(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 350,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Devam",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Atla"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//***************BİLGİLENDİRME 3. SAYFASI ***********************

class Bilgilendirme3 extends StatefulWidget {
  @override
  _Bilgilendirme3State createState() => _Bilgilendirme3State();
}

class _Bilgilendirme3State extends State<Bilgilendirme3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey[200]),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/onbilgi3.png"),
              ),
              Text(
                "Katılamıyorsan Üzülme",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Etkinliğe katılamayacak mısın? Üzülme, arkadaşına uygulama içinden ödeme yaparak hediye gönderebilirsin.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  debugPrint("BASILDI Giriş");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 350,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Giriş",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
