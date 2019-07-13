import 'package:dio/dio.dart';
import 'package:flutter_im/api/dio_client.dart';
import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  // observables
  @observable
  bool loading = false;

  @observable
  bool success = false;

  @observable
  String accessToken = '';

  @observable
  String homeserver = '';

  @observable
  String name = '';

  @observable
  String password = '';

  @observable //computed
  bool canLogin = true; //=> !name.isNotEmpty && password.isNotEmpty;

  // actions
  @action
  void setUserAccessToken(String value) {
    accessToken = value;
  }

  @action
  void setUserHomeserver(String value) {
    homeserver = value;
  }

  @action
  void setUserName(String value) {
    name = value;
    print(name);
  }

  @action
  void setUserPassword(String value) {
    password = value;
    print(password);
  }

  @action
  Future register() async {
    loading = true;
  }

  @action
  Future login() async {
    loading = true;

    Future.delayed(Duration(milliseconds: 2000)).then((future) {
      loading = false;
      success = true;
    }).catchError((e) {
      loading = false;
      success = false;
      print(e);
    });
  }

  @action
  Future logout() async {
    loading = true;
  }
}
