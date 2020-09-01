import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class MyHomePage extends StatelessWidget {
  final FirebaseUser user;
  final VoidCallback onSignOut;

  const MyHomePage({Key key, this.user, this.onSignOut}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            onPressed: () => _cikisYap(),
            child: Text("Çıkış Yap"),
          ),
        ],
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 95),
            child: Text("Davet360"),
          ),
        ),
      ),
      body: Center(child: Text("HOŞGELDİN : " + user.uid)),
    );
  }

  Future<void> _cikisYap() async {
    await FirebaseAuth.instance.signOut();
    onSignOut();
    final _facebookLogIn = FacebookLogin();
    await _facebookLogIn.logOut();
  }
  
}
