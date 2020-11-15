import 'package:flutter/material.dart';

class UserViewModel extends ChangeNotifier {
  String userName = '';
  String mailAddress = '';

  void changeNameText(String inputName) {
    userName = inputName;
    notifyListeners();
  }

  void changeMailAddressText(String inputMailAddress) {
    mailAddress = inputMailAddress;
    notifyListeners();
  }
}
