import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class User {
  final String userID;
  String email;
  String userName;
  String profilFotoURL;
  DateTime createdAt;
  DateTime updatedAt;
  int seviye;

  User({@required this.userID, @required this.email});

  Map<String, dynamic> toMap() {
    return {
      "userID": userID,
      "email ": email,
      "userName": userName ??
          email.substring(
                0,
                email.indexOf("@"),
              ) +
              randomSayiUret(),
      "profilURL": profilFotoURL ?? "",
      "createdAt": createdAt ?? FieldValue.serverTimestamp(),
      "updatedAt": updatedAt ?? FieldValue.serverTimestamp(),
      "seviye": seviye ?? 1,
    };
  }

  User.fromMap(Map<String, dynamic> map)
      : userID = map["userID"],
        email = map["email"],
        userName = map["userName"],
        profilFotoURL = map["profilURL"],
        createdAt = (map["createdAt"] as Timestamp).toDate(),
        updatedAt = (map["updatedAt"] as Timestamp).toDate(),
        seviye = map["seviye"];

  @override
  String toString() {
    return 'User{userID: $userID, email: $email, userName: $userName, profilURL: $profilFotoURL, createdAt: $createdAt, updatedAt: $updatedAt, seviye: $seviye}';
  }

  randomSayiUret() {
    int rasgaleSayi = Random().nextInt(99999);
    return rasgaleSayi.toString();
  }
}
