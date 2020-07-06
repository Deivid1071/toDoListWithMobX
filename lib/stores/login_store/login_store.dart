import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {

  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value ;

  @observable
  String password = '';

  @action
  void setPassword(String value) => password = value;

  @computed
  bool get isEmailValid => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

  @computed
  bool get isPasswordValid => RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$').hasMatch(password);

  @observable
  bool isHidden = true;

  @action
  void changeIsHidden() => isHidden = !isHidden;

  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  @computed
  Function get loginPressed =>
      (isEmailValid && isPasswordValid && !loading) ? login : null;

  @action
  Future<void> login() async {
    loading = true;

    //processar dados
    await Future.delayed(Duration(seconds: 2));

    loading = false;
    loggedIn = true;
  }

  @action
  void logout() {
    loggedIn = false;
    email = '';
    password = '';
    print(loggedIn);
  }
}

