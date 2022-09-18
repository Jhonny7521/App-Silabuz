import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  UserProvider(
      {this.userName, this.userAddress, this.userPhone, this.userEmail});
  String? userName;
  String? userAddress;
  String? userPhone;
  String? userEmail;
  String? userCondition;
  String? userBank;
  String? userPension;

  void changeName(String newName) {
    userName = newName;
    notifyListeners();
  }
}
