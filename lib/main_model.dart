import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String yoshikiText = '練習中だよんんんん️';

  void changeyoshikiText(){
    yoshikiText = 'よしきかっこいい❗️';
    notifyListeners();
  }
}