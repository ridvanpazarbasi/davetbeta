import 'package:davet360/home.dart';
import 'package:davet360/sigin_islemleri/signin_giris.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LeadingPage extends StatefulWidget {
  @override
  _LeadingPageState createState() => _LeadingPageState();
}

class _LeadingPageState extends State<LeadingPage> {
  FirebaseUser _user;
  @override
  void initState() {
    super.initState();
    _checkUser();
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      debugPrint("if");
      return SignInGiris(
        onSigIn: (user) {
          _upDateUser(user);
        },
      );
    } else {
      debugPrint("else");
      return MyHomePage(
        user: _user,
        onSignOut: () {
          _upDateUser(null);
        },
      );
    }
  }

  Future<void> _checkUser() async {
    _user = await FirebaseAuth.instance.currentUser();
  }

  void _upDateUser(FirebaseUser user) {
    setState(() {
      _user = user;
    });
  }
}
