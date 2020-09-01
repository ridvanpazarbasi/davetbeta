import 'package:davet360/model/user_model.dart';
import 'package:davet360/sigin_islemleri/creat_signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class SignInGiris extends StatefulWidget {
  final Function(FirebaseUser) onSigIn;
  final Function(FacebookLogin) onFacebookSignIn;

  SignInGiris({Key key, this.onSigIn, this.onFacebookSignIn}) : super(key: key);

  @override
  _SignInGirisState createState() => _SignInGirisState();
}

class _SignInGirisState extends State<SignInGiris> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _formKey = GlobalKey<FormState>();

  String _email, _sifre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        title: Center(
          child: Text(
            "Davet360",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          color: Colors.grey[200],
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset("assets/register.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Card(
                    elevation: 18,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              initialValue: "ridvan@ridvan.com",
                              onSaved: (String girilenEmail) {
                                _email = girilenEmail;
                              },
                              keyboardType: TextInputType.emailAddress,
                              enableSuggestions: false,
                              decoration: InputDecoration(
                                labelText: "E-Mail",
                                labelStyle: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              initialValue: "123456",
                              onSaved: (String girilenSifre) {
                                _sifre = girilenSifre;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Parola",
                                labelStyle: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => KayitSayafsi()),
                        );
                      },
                      child: Text("Yeni Hesap Oluştur"),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Şifremi Unuttum"),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    _validateSubmitRegister();
                    
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
                        "Giriş Yap",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () => siginFacebook(),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF334D92),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: 180,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Facebook İle Giriş",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("BASILDI Giriş");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: 180,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Twitter İle Giriş",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
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
        ),
      ),
    );
  }

  void _validateSubmitRegister() async {
    final form = _formKey.currentState;
    if (_formKey.currentState.validate()) {
      form.save();
      AuthResult result = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _sifre);
      widget.onSigIn(result.user);

      // ignore: unused_local_variable
      FirebaseUser user = result.user;
    }
  }

  User _userFromFirebase(FirebaseUser user) {
    if (user == null) {
      return null;
    } else {
      return User(userID: user.uid, email: user.email);
    }
  }

  Future siginFacebook() async {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final _facebookLogIn = FacebookLogin();
    FacebookLoginResult _faceResult =
        await _facebookLogIn.logIn(["public_profile", "email"]);
    switch (_faceResult.status) {
      case FacebookLoginStatus.loggedIn:
        if (_faceResult.accessToken != null &&
            _faceResult.accessToken.isValid()) {
          AuthResult _firebaseResult = await _firebaseAuth.signInWithCredential(
              FacebookAuthProvider.getCredential(
                  accessToken: _faceResult.accessToken.token));
          widget.onSigIn(_firebaseResult.user);
          FirebaseUser _user = _firebaseResult.user;
          return _userFromFirebase(_user);
        } else {
          /* print("access token valid :" +
                                  _faceResult.accessToken.isValid().toString());*/
        }

        break;

      case FacebookLoginStatus.cancelledByUser:
        print("kullanıcı facebook girişi iptal etti");
        break;

      case FacebookLoginStatus.error:
        print("Hata cıktı :" + _faceResult.errorMessage);
        break;
    }

    return null;
  }
}
