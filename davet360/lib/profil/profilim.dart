import 'package:davet360/profil/kisisel_bilgiler_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ProfilimPage extends StatefulWidget {
  @override
  _ProfilimPageState createState() => _ProfilimPageState();
}

class _ProfilimPageState extends State<ProfilimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Icon(
                FeatherIcons.bell,
              ),
            ),
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.grey[300],
        title: Padding(
          padding: const EdgeInsets.only(left: 130),
          child: Text(
            "Davet360",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => KisiselBilgiler()),
                  );
                },
                child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/register.png")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Rıdvan Pazarbaşı",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            Container(
              color: Colors.grey[300],
              height: MediaQuery.of(context).size.height + 150,
              width: MediaQuery.of(context).size.width,
              child: Column(
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
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 225,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              leading: Icon(FeatherIcons.user),
                              title: Text(
                                "Profilim",
                                style: TextStyle(fontSize: 18),
                              ),
                              onTap: () {
                                debugPrint("Profil basıldı");
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(FeatherIcons.calendar),
                              title: Text(
                                "Etkinliklerim",
                                style: TextStyle(fontSize: 18),
                              ),
                              onTap: () {
                                debugPrint("Profil Etkinlik");
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(FeatherIcons.key),
                              title: Text(
                                "Şifre Değiştir",
                                style: TextStyle(fontSize: 18),
                              ),
                              onTap: () {
                                debugPrint("Profil Şifre");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Diğer",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(FeatherIcons.users),
                                  title: Text(
                                    "Arkadaşlarını Davet Et",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  onTap: () {
                                    debugPrint("Profilar");
                                  },
                                ),
                                Divider(),
                                ListTile(
                                  leading: Icon(FeatherIcons.star),
                                  title: Text(
                                    "Uygulama Değerlendir",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  onTap: () {
                                    debugPrint("Profil Etkinlik");
                                  },
                                ),
                                Divider(),
                                ListTile(
                                  leading: Icon(FeatherIcons.mail),
                                  title: Text(
                                    "Bize Ulaşın",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  onTap: () {
                                    debugPrint("Profil Şifre");
                                  },
                                ),
                                Divider(),
                                ListTile(
                                  leading: Icon(FeatherIcons.checkCircle),
                                  title: Text(
                                    "Geri Bildirim",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  onTap: () {
                                    debugPrint("Profil Şifre");
                                  },
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Version: 1.0.0"),
                                    Text("Build: 2020072955"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 75),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 250,
                      height: 45,
                      child: Center(
                        child: Text(
                          "Çıkış Yap",
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
