import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginIslemeleri extends StatefulWidget {
  @override
  _LoginIslemeleriState createState() => _LoginIslemeleriState();
}

class _LoginIslemeleriState extends State<LoginIslemeleri> {
  String mail;
  String sifre;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Authentication"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          RaisedButton(
            child: Text(
              "Email/Sifre Yeni Kullanıcı Oluştur",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlue,
            onPressed: _emailveSifreileUserOlustur,
          ),
        ]),
      ),
    );
  }

  void _emailveSifreileUserOlustur() async {
   
    var _firebaseUser = await _auth.createUserWithEmailAndPassword(
      email: mail,
      password: sifre,
    );
    print("email:" + mail);
  }
}
