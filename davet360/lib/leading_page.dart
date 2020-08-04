import 'package:davet360/home.dart';
import 'package:davet360/model/user_model.dart';
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
    // TODO: implement initState
    super.initState();
    _checkUser();
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      debugPrint("if");
      return SignInGiris();
    } else {
      debugPrint("else");
      return MyHomePage(user: _user);
    }
  }

  Future<void> _checkUser() async {
    _user = await FirebaseAuth.instance.currentUser();
  }
}
