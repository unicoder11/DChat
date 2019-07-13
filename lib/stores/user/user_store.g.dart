// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$UserStore on _UserStore, Store {
  final _$loadingAtom = Atom(name: '_UserStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$successAtom = Atom(name: '_UserStore.success');

  @override
  bool get success {
    _$successAtom.context.enforceReadPolicy(_$successAtom);
    _$successAtom.reportObserved();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.context.conditionallyRunInAction(() {
      super.success = value;
      _$successAtom.reportChanged();
    }, _$successAtom, name: '${_$successAtom.name}_set');
  }

  final _$accessTokenAtom = Atom(name: '_UserStore.accessToken');

  @override
  String get accessToken {
    _$accessTokenAtom.context.enforceReadPolicy(_$accessTokenAtom);
    _$accessTokenAtom.reportObserved();
    return super.accessToken;
  }

  @override
  set accessToken(String value) {
    _$accessTokenAtom.context.conditionallyRunInAction(() {
      super.accessToken = value;
      _$accessTokenAtom.reportChanged();
    }, _$accessTokenAtom, name: '${_$accessTokenAtom.name}_set');
  }

  final _$homeserverAtom = Atom(name: '_UserStore.homeserver');

  @override
  String get homeserver {
    _$homeserverAtom.context.enforceReadPolicy(_$homeserverAtom);
    _$homeserverAtom.reportObserved();
    return super.homeserver;
  }

  @override
  set homeserver(String value) {
    _$homeserverAtom.context.conditionallyRunInAction(() {
      super.homeserver = value;
      _$homeserverAtom.reportChanged();
    }, _$homeserverAtom, name: '${_$homeserverAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_UserStore.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_UserStore.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$canLoginAtom = Atom(name: '_UserStore.canLogin');

  @override
  bool get canLogin {
    _$canLoginAtom.context.enforceReadPolicy(_$canLoginAtom);
    _$canLoginAtom.reportObserved();
    return super.canLogin;
  }

  @override
  set canLogin(bool value) {
    _$canLoginAtom.context.conditionallyRunInAction(() {
      super.canLogin = value;
      _$canLoginAtom.reportChanged();
    }, _$canLoginAtom, name: '${_$canLoginAtom.name}_set');
  }

  final _$registerAsyncAction = AsyncAction('register');

  @override
  Future<dynamic> register() {
    return _$registerAsyncAction.run(() => super.register());
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future<dynamic> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$logoutAsyncAction = AsyncAction('logout');

  @override
  Future<dynamic> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$_UserStoreActionController = ActionController(name: '_UserStore');

  @override
  void setUserAccessToken(String value) {
    final _$actionInfo = _$_UserStoreActionController.startAction();
    try {
      return super.setUserAccessToken(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserHomeserver(String value) {
    final _$actionInfo = _$_UserStoreActionController.startAction();
    try {
      return super.setUserHomeserver(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserName(String value) {
    final _$actionInfo = _$_UserStoreActionController.startAction();
    try {
      return super.setUserName(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserPassword(String value) {
    final _$actionInfo = _$_UserStoreActionController.startAction();
    try {
      return super.setUserPassword(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }
}
