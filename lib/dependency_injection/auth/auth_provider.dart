

enum LoginProvider{
  API,
}
abstract class AuthProvider{

  void doLogin();
  void doLogout();
}


class ApiAuth implements AuthProvider{


  @override
  void doLogin() {
    // TODO: implement doLogin
  }

  @override
  void doLogout() {
    // TODO: implement doLogout
  }

}