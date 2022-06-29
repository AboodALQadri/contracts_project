import 'dart:convert';

import 'package:mahmoud/api/api_settings.dart';
import 'package:mahmoud/models/login_model.dart';
import 'package:mahmoud/storage/shared_pref_controller.dart';
import 'package:mahmoud/utils/api_helper.dart';
import 'package:mahmoud/utils/api_response.dart';
import 'package:http/http.dart' as http;

class AuthApiController with ApiHelper {
  late LoginModel loginModel;

  Future<ApiResponse> login(
      {required String email, required String password}) async {
    var uri = Uri.parse(ApiSettings.login);
    var response =
        await http.post(uri, body: {'username': email, 'password': password});

    if (response.statusCode == 200 || response.statusCode == 400) {
      var jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        // var jsonObject = jsonResponse;
        LoginModel loginModel = LoginModel.fromJson(jsonResponse);
        SharedPrefController().save(loginModel: loginModel);
      }
      return ApiResponse(
          message: jsonResponse['msg'], status: jsonResponse['status']);
    } else {
      return errorServerResponse;
    }
  }
}
