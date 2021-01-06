import 'package:flutter/material.dart';
import 'package:food_user/utils/app_state.dart';


class BaseViewmodel extends ChangeNotifier {
  ViewState _appState = ViewState.kIdle;
  ViewState get state => _appState;

  void setState(ViewState state) {
    _appState = state;
    notifyListeners();
  }
}