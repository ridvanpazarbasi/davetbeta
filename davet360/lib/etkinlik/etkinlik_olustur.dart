import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class EtkinlikOlustur extends StatefulWidget {
  @override
  _EtkinlikOlusturState createState() => _EtkinlikOlusturState();
}

class _EtkinlikOlusturState extends State<EtkinlikOlustur> {
  bool switchState = false;
  @override
  Widget build(BuildContext context) {
    final sized = TextStyle(fontSize: 20);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Image.asset("assets/register.png"),
                  Positioned(
                    child: Opacity(
                      opacity: 0.9,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.purple,
                        height: 200,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint("Basldı");
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FeatherIcons.camera,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text(
                            "Fotoğraf Ekle",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Text(
                            "(Max. 10 adet)",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Katagory",
                      labelStyle: sized,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Etkinlik Adı",
                      labelStyle: sized,
                    ),
                  ),
                  TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: "Açıklama",
                      labelStyle: sized,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Tarih/Saat",
                      labelStyle: sized,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Konum",
                      labelStyle: sized,
                    ),
                  ),
                  SwitchListTile(
                    value: switchState,
                    onChanged: (deger) {},
                    title:
                        Text("İstek Listesi", style: TextStyle(fontSize: 20)),
                    secondary: Icon(FeatherIcons.gift),
                  ),
                  Divider(color: Colors.black),
                  SwitchListTile(
                    value: switchState,
                    onChanged: (deger) {},
                    title: Text("Para Toplanacak Mı?",
                        style: TextStyle(fontSize: 20)),
                    secondary: Icon(FeatherIcons.dollarSign),
                  ),
                  Divider(color: Colors.black),
                  SwitchListTile(
                    value: switchState,
                    onChanged: (deger) {},
                    title: Text("Etkinlik Herkese Açık",
                        style: TextStyle(fontSize: 20)),
                    secondary: Icon(FeatherIcons.users),
                  ),
                  Divider(color: Colors.black),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 300,
                      height: 50,
                      child: Center(
                        child: Text(
                          "Yayınla",
                          style: TextStyle(fontSize: 20, color: Colors.white),
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
