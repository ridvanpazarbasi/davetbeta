import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class KayitSayafsi extends StatefulWidget {
  @override
  _KayitSayafsiState createState() => _KayitSayafsiState();
}

class _KayitSayafsiState extends State<KayitSayafsi> {
  final _formKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  String _email, _sifre;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.grey[200],
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text(
            "Davet360",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            height: 700,
            color: Colors.grey[200],
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/register.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Card(
                    elevation: 8,
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
                              initialValue: "Rıdvan Pazarbaşı",
                              decoration: InputDecoration(
                                labelText: "Adı Soyadı",
                                labelStyle: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
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
                              decoration: InputDecoration(
                                labelText: "E-Mail",
                                labelStyle: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              initialValue: "123456",
                              onSaved: (String girilenSifre) {
                                _sifre = girilenSifre;
                              },
                              obscureText: true,
                              cursorColor: Colors.red,
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
                InkWell(
                  onTap: () => _validateSubmitRegister(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 350,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Hesap Oluştur",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 110,
                          ),
                          Text("Hesabın var mı?"),
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Giriş Yap"),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
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
          .createUserWithEmailAndPassword(email: _email, password: _sifre);
      FirebaseUser user = result.user;
    }
  }

  void signOut() {
    FirebaseAuth.instance.signOut();
  }
}
