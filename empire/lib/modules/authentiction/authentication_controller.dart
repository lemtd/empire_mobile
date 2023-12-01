import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'authentication_controller.g.dart';

class AuthenticationController = _AuthenticationControllerBase with _$AuthenticationController;

abstract class _AuthenticationControllerBase with Store {
  _AuthenticationControllerBase();

  @observable
  TextEditingController email = TextEditingController();

  @observable
  TextEditingController password = TextEditingController();

  @observable
  bool isObscure = true;

  final keyboardEmail = TextInputType.emailAddress;

  final keyboardPassword = TextInputType.visiblePassword;

  // @action
  // void changeValue() {
  //   isObscure = !isObscure;
  // }
}