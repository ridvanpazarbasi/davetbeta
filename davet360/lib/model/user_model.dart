
import 'package:flutter/material.dart';

class User {
  String userID;
  String email;
  String iban;
  String adress;
  String name;
  int phone;
  Image picture;

  User({@required this.userID, @required this.email});

  Map<String, dynamic> toMap() {
    return {
      "userID": userID,
      "email ": email,
      "iban": iban,
      "adress": adress,
      "name": name,
      "phone": phone,
      "picture": picture,
    };
  }

  User.fromMap(Map<String, dynamic> map)
      : userID = map["userID"],
        email = map["email"],
        iban = map["iban"],
        adress = map["adress"],
        name = map["name"],
        phone = map["phone"],
        picture = map["picture"];

  @override
  String toString() {
    return 'User{userID: $userID, email: $email, iban: $iban, adress: $adress, name: $name, phone: $phone, picture: $picture}';
  }
}
