import 'package:food_delivery_app/core/storage/data_state.dart';
import 'package:food_delivery_app/data/models/auth_response_model/auth_response_model.dart';
import 'package:food_delivery_app/data/models/login_user_model/login_user_model.dart';
import 'package:food_delivery_app/data/models/register_user_model/register_user_model.dart';
import 'package:food_delivery_app/data/models/user_model/user_model.dart';

abstract class AuthRespository {
  Future<DataState<AuthResponseModel>> login(LoginUserModel model);

  Future<DataState<UserModel>> register(RegisterUserModel model);
}
