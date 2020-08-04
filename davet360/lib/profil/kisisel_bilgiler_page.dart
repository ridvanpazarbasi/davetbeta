import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class KisiselBilgiler extends StatefulWidget {
  @override
  _KisiselBilgilerState createState() => _KisiselBilgilerState();
}

class _KisiselBilgilerState extends State<KisiselBilgiler> {
  File _profilFoto;
  final picker = ImagePicker();
  void _galeridenResimSec() async {
    var _yeniResim = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _profilFoto = File(_yeniResim.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final radius = EdgeInsets.all(20);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text(
            "Davet360",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: GestureDetector(
                onTap: () {
                  _galeridenResimSec();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.white,
                      backgroundImage: _profilFoto == null
                          ? AssetImage("assets/register.png")
                          : FileImage(_profilFoto),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height + 150,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Kişisel Bilgiler",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: radius,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.red,
                        labelText: "Ad Soyad",
                        hintText: "Ad Soyad",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: radius,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.red,
                        labelText: "E-Posta",
                        hintText: "E-Posta",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: radius,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.red,
                        labelText: "TC. Kimlik Numarası",
                        hintText: "TC. Kimlik Numarası",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: radius,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.red,
                        labelText: "Telefon",
                        hintText: "Telefon",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: radius,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.red,
                        labelText: "IBAN",
                        hintText: "IBAN",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: radius,
                    child: TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        fillColor: Colors.red,
                        labelText: "Adres",
                        hintText: "Adres",
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        debugPrint("BASILDI kAYDET");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[700],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 180,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Kaydet",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        debugPrint("BASILDI iptal");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red[500],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 100,
                        height: 35,
                        child: Center(
                          child: Text(
                            "İptal",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
