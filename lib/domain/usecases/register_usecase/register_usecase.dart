import 'package:food_delivery_app/core/storage/data_state.dart';
import 'package:food_delivery_app/data/models/register_user_model/register_user_model.dart';
import 'package:food_delivery_app/data/models/user_model/user_model.dart';
import 'package:food_delivery_app/data/repository/auth_repository/auth_respository.dart';
import 'package:food_delivery_app/domain/usecases/use_case.dart';

class RegisterUsecase {
  final AuthRespository authRespository;

  RegisterUsecase({required this.authRespository});

  Future<DataState<UserModel>> call(RegisterUserModel model){
    return authRespository.register(model);
  } 

}