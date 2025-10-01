import 'dart:developer';

import 'package:bookia/core/services/dio/api_endpoints.dart';
import 'package:bookia/core/services/dio/dio_provider.dart';
import 'package:bookia/core/services/local/local_helper.dart';
import 'package:bookia/feature/auth/data/models/auth_params.dart';
import 'package:bookia/feature/auth/data/models/auth_response/auth_response.dart';

class AuthRepo {
  static Future<AuthResponse?> register(AuthParams params) async {
    try {
      var res = await DioProvider.post(
        endpoint: ApiEndpoints.register,
        data: params.toJson(),
      );
      if (res.statusCode == 201) {
        // Parse Json to object
        var body = res.data;
        var userObj = AuthResponse.fromJson(body);

        SharedPref.saveUserData(userObj.data);
        return userObj;
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }

  static Future<AuthResponse?> login(AuthParams params) async {
    try {
      var res = await DioProvider.post(
        endpoint: ApiEndpoints.login,
        data: params.toJson(),
      );
      if (res.statusCode == 200) {
        // Parse Json to object
        var body = res.data;
        var userObj = AuthResponse.fromJson(body);

        SharedPref.saveUserData(userObj.data);
        return userObj;
      } else {
        return null;
      }
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }
}
