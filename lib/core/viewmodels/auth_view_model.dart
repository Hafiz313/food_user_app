import 'dart:convert';

import "package:flutter/material.dart";
import 'package:food_user/core/viewmodels/base_view_models.dart';
import 'package:food_user/utils/app_api_ref.dart';
import 'package:food_user/utils/app_state.dart';
import 'package:http/http.dart' as _http;

class AuthApi {
  bool isSignupApi;
  AuthApi({@required this.isSignupApi});

  postData(data) async {
    return await _http.post(
      isSignupApi ? kSignupApi : kSigninApi,
      body: jsonEncode(data),
      headers: _setHeaders(),
    );
  }

  getData() async {
    return await _http.get(
      isSignupApi ? kSignupApi : kSigninApi,
      headers: _setHeaders(),
    );
  }

  _setHeaders() => {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };
}

class AuthViewmodel extends BaseViewmodel {
  String signupFirstName,
      signupLastName,
      signupEmail,
      signupPassword,
      signinEmail,
      signinPassword,
      authErrorMsg;
  bool authError = true;
  bool isSignin = false;
  bool isSignup = false;

  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signinFormKey = GlobalKey<FormState>();

  bool validateAndSave({
    @required FormState formstate,
  }) {
    final form = formstate;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  Future<void> validateAndSubmitSignup() async {
    setState(ViewState.kBusy);
    try {
      if (validateAndSave(formstate: signupFormKey.currentState)) {
        var data = {
          'email': signupEmail,
          'password': signupPassword,
          'first_name': signupFirstName,
          'last_name': signupLastName,
        };

        var res = await AuthApi(
          isSignupApi: true,
        ).postData(data);
        var body = json.decode(res.body);
        print(body);
        if (body['success']) {
          isSignup = true;
        } else {
          authError = true;
          print("---------------------Signup is false---------------");
          print({
            "-----Auth Error-----------${body['data']['message']}--------------------------"
          });
          authErrorMsg = body['data']['message'];
          print("-------------------Sign  in not success----------------");
        }
      }
      print("not success");
      authError = false;
    } catch (e) {
      authErrorMsg = e.message.toString();
      authError = true;
    }
    setState(ViewState.kIdle);
  }

  Future<void> validateAndSubmitSignin() async {
    setState(ViewState.kBusy);




    try {
      if (validateAndSave(formstate: signinFormKey.currentState)) {
        print("------------------$signinEmail and password : $signinPassword--------------");
        /*  var data = {
          'email': signinEmail,
          'password': signinPassword,
        };
        var res = await AuthApi(
          isSignupApi: false,
        ).postData(data);
        var body = json.decode(res.body);
        print(body);
        if (body['success']) {
          //===============Shared Preferences to store token==================
        //  SharedPreferences localStorage =
          await SharedPreferences.getInstance();
          localStorage.setString('data', json.encode(body['data']));
          isSignin = true;
          //===============End==================
          authError = false;
          print("-------------------Sign in success----------------");
        } else {
          authError = true;

          print({body['data']['message']});
          authErrorMsg = body['data']['message'];
          print("-------------------Sign  in not success----------------");
        }

        print("success");*/
      }
      print("not success");
      authError = false;
    } catch (e) {
      authErrorMsg = e.message.toString();
      authError = true;
    }
    setState(ViewState.kIdle);
  }
}
