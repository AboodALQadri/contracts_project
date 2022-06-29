class LoginModel {
  late bool status;
  late int code;
  late String msg;
  late String token;

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    msg = json['msg'];
    token = json['token'];
  }
}
