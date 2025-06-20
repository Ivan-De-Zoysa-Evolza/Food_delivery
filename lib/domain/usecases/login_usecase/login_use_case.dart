import 'package:food_delivery_app/core/storage/data_state.dart';
import 'package:food_delivery_app/data/models/auth_response_model/auth_response_model.dart';
import 'package:food_delivery_app/data/models/login_user_model/login_user_model.dart';
import 'package:food_delivery_app/data/repository/auth_repository/auth_respository.dart';

class LoginUseCase {
  final AuthRespository authRespository;

  LoginUseCase({required this.authRespository});

  @override
  Future<DataState<AuthResponseModel>> call(LoginUserModel model){
    return authRespository.login(model);
  }
}