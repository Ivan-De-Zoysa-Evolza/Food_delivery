import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/core/storage/data_state.dart';
import 'package:food_delivery_app/data/models/register_user_model/register_user_model.dart';
import 'package:food_delivery_app/data/models/user_model/user_model.dart';
import 'package:food_delivery_app/domain/usecases/register_usecase/register_usecase.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState>{
  final RegisterUsecase registerUsecase;

  RegisterCubit({required this.registerUsecase}) : super(RegisterInitialState());

  Future<DataState<UserModel>> register(RegisterUserModel registerModel)async{
    emit(RegisterInitialState());
    try{
      final response = await registerUsecase.call(registerModel);
      if (response is DataSuccess){
        emit(RegisterLoadingState(userModel: response.data));
        return DataSuccess(response.data!);
      } else {
        emit(RegisterFailedState(error: response.error is DioException ? response.error as DioException : null));
        return DataFailed(response.error ?? DioException(requestOptions: RequestOptions(path: '')));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    } 
  }

}