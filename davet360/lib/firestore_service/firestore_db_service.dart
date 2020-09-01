import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:davet360/firestore_service/database.dart';
import 'package:davet360/model/user_model.dart';

class FirestoreDBService implements DBBase{
    final Firestore _firestoreDB = Firestore.instance;

  @override
  Future<bool> saveUser(User user) async {
   await _firestoreDB
        .collection("users")
        .document(user.userID)
        .setData(user.toMap());
    return true;
    
  }


}
