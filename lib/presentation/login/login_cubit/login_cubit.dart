import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/core/storage/data_state.dart';
import 'package:food_delivery_app/data/models/login_user_model/login_user_model.dart';
import 'package:food_delivery_app/domain/usecases/login_usecase/login_use_case.dart';

import '../../../data/models/auth_response_model/auth_response_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;

  LoginCubit({required this.loginUseCase}) : super(LoginInitialState());

  Future<DataState<AuthResponseModel>> login(LoginUserModel loginuserModel) async {
    emit(LoginInitialState());
    try {
      final response = await loginUseCase.call(loginuserModel);
      if (response is DataSuccess){
   emit(LoginLoadingState(authModel: response.data));
   return DataSuccess(response.data!);
      }
   else{
    emit(LoginFailureState(error: response.error is DioException ? response.error as DioException : null ));
    return DataFailed(response.error ?? DioException(requestOptions: RequestOptions(path: '')));
   }
    }on DioException catch (e) {
      return DataFailed(e);
  
    }
  }
}