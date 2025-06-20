import 'dart:io';

import 'package:dio/dio.dart';
import 'package:food_delivery_app/core/storage/data_state.dart';
import 'package:food_delivery_app/data/models/auth_response_model/auth_response_model.dart';
import 'package:food_delivery_app/data/models/login_user_model/login_user_model.dart';
import 'package:food_delivery_app/data/models/register_user_model/register_user_model.dart';
import 'package:food_delivery_app/data/models/user_model/user_model.dart';
import 'package:food_delivery_app/data/repository/auth_repository/auth_respository.dart';
import 'package:food_delivery_app/domain/services/api/api_service.dart';
import 'package:food_delivery_app/domain/services/token/token_storage_service.dart';

class AuthRepoImpl implements AuthRespository {
  final TokenStorageService _tokenStorageService;
  final ApiService _apiService;

  AuthRepoImpl(this._tokenStorageService, this._apiService);
  @override
  Future<DataState<AuthResponseModel>> login(
    LoginUserModel loginUserModel,
  ) async {
    try {
      final httpResponse = await _apiService.login(loginUserModel);
      if (httpResponse.response.statusCode == HttpStatus.accepted ||
          httpResponse.response.statusCode == HttpStatus.ok) {
        final responseData = httpResponse.response.data;
        // return DataSuccess(responseData);
        return DataSuccess(AuthResponseModel.fromJson(responseData));
      } else {
        return DataFailed(
          DioException(
            type: DioExceptionType.badResponse,
            response: httpResponse.response,
            requestOptions: httpResponse.response.requestOptions,
            error: httpResponse.response,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<UserModel>> register(RegisterUserModel registerModel) async {
    try {
      final httpResponse = await _apiService.register(registerModel);
      if(httpResponse.response.statusCode == HttpStatus.accepted ||
        httpResponse.response.statusCode == HttpStatus.ok || httpResponse.response.statusCode == HttpStatus.created
      ){
        print("response eka ok");
        final responseData = httpResponse.response.data;
        return DataSuccess(UserModel.fromJson(responseData));
      } else {
        return DataFailed(
          DioException(
            type: DioExceptionType.badResponse,
            response: httpResponse.response,
            requestOptions: httpResponse.response.requestOptions,
            error: httpResponse.response,
          ),
        );
      }
    } on DioException catch (e) {
      throw DataFailed(e);
    }
  }
}
