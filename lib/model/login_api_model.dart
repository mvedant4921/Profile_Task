
class LoginClass {
  final String uname;
  final String password;

  const LoginClass({required this.uname, required this.password});

  factory LoginClass.fromJson(Map<String, dynamic> json) {
    return LoginClass(
      uname: json['uname'],
      password: json['password'],
    );
  }
}