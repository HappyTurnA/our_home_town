import 'package:flutter/material.dart';

class HiraganaModel extends ChangeNotifier {
  String _inputText = "";

  void appendText(String val) {
    this._inputText = this._inputText + val;
    notifyListeners();
  }

  String getText() {
    return this._inputText;
  }

  void resetText() {
    this._inputText = "";
    notifyListeners();
  }
}
