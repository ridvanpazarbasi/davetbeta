import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Etkinligim extends StatefulWidget {
  @override
  _EtkinligimState createState() => _EtkinligimState();
}

class _EtkinligimState extends State<Etkinligim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(icon: Icon(FeatherIcons.edit), onPressed: () {}),
              IconButton(icon: Icon(FeatherIcons.share), onPressed: () {})
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + 100,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset("assets/etkinligim.jpeg"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text(
                            "23 Nisan 2020",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        height: 30,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "20:30",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Düğün",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      IconButton(
                          icon: Icon(FeatherIcons.calendar), onPressed: () {}),
                    ],
                  ),
                  Text(
                    "Ali ile Ayşe’nin Düğünü        ",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      readOnly: true,
                      maxLines: 2,
                      decoration: InputDecoration(
                        labelText: "Adres",
                        suffixIcon: Icon(FeatherIcons.map),
                      ),
                      initialValue:
                          "Yıldız, Çırağan Cd. No:32, 34349 \nBeşiktaş/İstanbul",
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      height: 56,
                      width: 343,
                      child: Center(
                        child: Text(
                          "Etkinlik Hareketleri",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange[700],
                        borderRadius: BorderRadius.circular(71),
                      ),
                      height: 27,
                      width: 119,
                      child: Center(
                        child: Text(
                          "Yayından Kaldır",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                width: 327,
                height: 120,
                left: 30,
                top: 370,
                child: Text(
                  "Sevgi, saygı ve anlayışla temelini attığımız beraberliğimizi sonsuza dek sürdürmeye karar verdik. Nikah törenimizde sizlerle birlikte olmaktan mutluluk duyarız.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                width: 327,
                height: 89,
                left: 40,
                top: 550,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(FeatherIcons.gift),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "İstek Listesi",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Icon(FeatherIcons.moreVertical),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Divider(color: Colors.grey),
                        SizedBox(
                          height: 3,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(FeatherIcons.plusCircle),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Ekle",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
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
