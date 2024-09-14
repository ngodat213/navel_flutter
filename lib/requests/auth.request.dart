import 'package:freal_flutter/core/base/base.api.dart';
import 'package:freal_flutter/managers/manager.address.dart';
import 'package:freal_flutter/models/api.response.dart';
import 'package:image_picker/image_picker.dart';

class AuthRequest {
  final BaseAPI _baseAPI = BaseAPI();

  Future<ApiResponse> loginRequest({
    required String email,
    required String password,
  }) async {
    var response = await _baseAPI.fetchData(
      ManagerAddress.loginUrl,
      method: ApiMethod.POST,
      body: {
        "email": email,
        "password": password,
      },
    );
    return ApiResponse.fromResponse(response);
  }

  Future<ApiResponse> register({
    required String fullname,
    required String email,
    required String password,
  }) async {
    var response = await _baseAPI.fetchData(
      ManagerAddress.registerUrl,
      method: ApiMethod.POST,
      body: {
        "fullname": fullname,
        "email": email,
        "password": password,
      },
    );
    return ApiResponse.fromResponse(response);
  }

  Future<ApiResponse> forgotPassword({
    required String email,
  }) async {
    var response = await _baseAPI.fetchData(
      ManagerAddress.forgotPassword,
      method: ApiMethod.POST,
      body: {
        "email": email,
      },
    );
    return ApiResponse.fromResponse(response);
  }

  Future<ApiResponse> verificationCode({
    required String email,
    required String code,
  }) async {
    var response = await _baseAPI.fetchData(
      ManagerAddress.verificationCode,
      method: ApiMethod.POST,
      body: {
        "email": email,
        "code": code,
      },
    );
    return ApiResponse.fromResponse(response);
  }

  Future<ApiResponse> uploadAvatar({
    required String email,
    required XFile pickedFile,
  }) async {
    var response = await _baseAPI.fetchData(
      ManagerAddress.uploadAvatar,
      method: ApiMethod.POST,
      body: {
        "email": email,
      },
    );
    return ApiResponse.fromResponse(response);
  }

  Future<ApiResponse> updatePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    var response = await _baseAPI.fetchData(
      ManagerAddress.forgotPassword,
      method: ApiMethod.POST,
      body: {
        "oldPassword": oldPassword,
        "newPassword": newPassword,
      },
    );
    return ApiResponse.fromResponse(response);
  }

  Future<ApiResponse> updateProfile({
    required String username,
    required String email,
    required String phone,
    required String countryCode,
    required String newPassword,
    required XFile photo,
  }) async {
    var response = await _baseAPI.fetchData(
      ManagerAddress.forgotPassword,
      method: ApiMethod.POST,
      body: {
        "username": username,
        "email": email,
        "phone": phone,
        "country_code": countryCode,
        "photo": photo,
      },
    );
    return ApiResponse.fromResponse(response);
  }
}
