import 'package:davet360/model/user_model.dart';

abstract class DBBase {
  
  Future<bool> saveUser(User user);
}
