import 'package:empire/src/stores/login_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'authentication_controller.g.dart';

class AuthenticationController = _AuthenticationControllerBase with _$AuthenticationController;

abstract class _AuthenticationControllerBase with Store {
  final LoginStore _loginStore;
  
  _AuthenticationControllerBase(this._loginStore);

  @observable
  TextEditingController email = TextEditingController();

  @observable
  TextEditingController password = TextEditingController();

  @observable
  bool isObscure = true;

  final keyboardEmail = TextInputType.emailAddress;

  final keyboardPassword = TextInputType.visiblePassword;

  Future<bool> loginUser() async {
    final success = await _loginStore.loginUser();
    return success;
  }

  // @action
  // void changeValue() {
  //   isObscure = !isObscure;
  // }
}