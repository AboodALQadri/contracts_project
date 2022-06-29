
import 'dart:io';

import 'package:mahmoud/storage/shared_pref_controller.dart';
import 'package:mahmoud/utils/api_response.dart';

mixin ApiHelper{
  Map<String , String> get headers{
    Map<String , String>  headers = <String , String> {};
    headers[HttpHeaders.acceptHeader] = 'application/json';
    if(SharedPrefController().loggedIn){
      headers[HttpHeaders.authorizationHeader] = SharedPrefController().token;
    }
    return headers;
  }

  ApiResponse get errorServerResponse{
    return ApiResponse(message: 'Somethings went Wrong', status: false);
  }

}