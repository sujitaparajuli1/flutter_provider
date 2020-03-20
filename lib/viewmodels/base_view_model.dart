import 'package:flutter/material.dart';

class BaseViewModel with ChangeNotifier{
  bool _busy = false;
  bool get busy => _busy;

  setBusy(bool value){
    _busy = value;
    notifyListeners();
  }

  
}