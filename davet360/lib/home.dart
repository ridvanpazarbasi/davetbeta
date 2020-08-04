import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class MyHomePage extends StatelessWidget {
  FirebaseUser user;
  MyHomePage({Key key, this.user}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(FeatherIcons.bell), onPressed: () {}),
        ],
        title: Center(
          child: Text("Davet360"),
        ),
      ),
      body: Text("HOŞGELDİN : " + user.uid),
    );
  }

  // ignore: non_constant_identifier_names
  HomePage() {
    // ignore: unused_local_variable
    final BorderRadius radius = BorderRadius.circular(20);

    return null;
  }
}
/*Padding(
      padding: const EdgeInsets.all(16.0),
      child: Opacity(
        opacity: 0.9,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Ayrinti()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(" Doğum \n   Günü",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                    decoration: BoxDecoration(
                        color: Colors.indigo[600], borderRadius: radius),
                    height: 180,
                    width: 180,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Category());
                  },
                  child: Container(
                    child: Center(
                        child: Text("Yeni İş",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                    decoration:
                        BoxDecoration(color: Colors.red, borderRadius: radius),
                    height: 180,
                    width: 180,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Dugun()));
              },
              child: Container(
                child: Center(
                    child: Text("Düğün",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold))),
                decoration:
                    BoxDecoration(color: Colors.purple, borderRadius: radius),
                height: 180,
                width: MediaQuery.of(context).size.width - 30,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Terfi()));
                  },
                  child: Container(
                    child: Center(
                        child: Text("Terfi",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                    decoration:
                        BoxDecoration(color: Colors.blue, borderRadius: radius),
                    height: 180,
                    width: 180,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Nisan()));
                  },
                  child: Container(
                    child: Center(
                        child: Text("Nişan",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                    decoration:
                        BoxDecoration(color: Colors.red, borderRadius: radius),
                    height: 180,
                    width: 180,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BabyShower()));
                  },
                  child: Container(
                    child: Center(
                        child: Text("  Baby \nShower",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                    decoration: BoxDecoration(
                        color: Colors.indigo[600], borderRadius: radius),
                    height: 180,
                    width: 180,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Tebrik()));
                  },
                  child: Container(
                    child: Center(
                        child: Text("Tebrik",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                    decoration: BoxDecoration(
                        color: Colors.pink[400], borderRadius: radius),
                    height: 180,
                    width: 180,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Dogum()));
                  },
                  child: Container(
                    child: Center(
                        child: Text("Doğum",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                    decoration: BoxDecoration(
                        color: Colors.amber, borderRadius: radius),
                    height: 180,
                    width: 180,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Diger()));
                  },
                  child: Container(
                    child: Center(
                        child: Text("Diğer",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                    decoration:
                        BoxDecoration(color: Colors.cyan, borderRadius: radius),
                    height: 180,
                    width: 180,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );*/
