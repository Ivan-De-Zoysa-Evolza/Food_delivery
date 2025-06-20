part of 'register_cubit.dart';

abstract class RegisterState extends Equatable {
  final RegisterUserModel? registerModel;
  final UserModel? userModel;
  final DioException? error;

  const RegisterState({
    this.registerModel,
    this.userModel,
    this.error,
  });

  @override
  List<Object?> get props => [
    userModel,
    error
  ];
}

class RegisterInitialState extends RegisterState{
  const RegisterInitialState({UserModel? userModel, DioException? error}):super(userModel: userModel, error: error);
}

class RegisterSuccessState extends RegisterState{
  const RegisterSuccessState({RegisterUserModel? registerModel, DioException? error}):super(registerModel: registerModel, error: error);
}

class RegisterLoadingState extends RegisterState{
  const RegisterLoadingState({UserModel? userModel, DioException? error}):super(userModel: userModel, error: error);
}

class RegisterFailedState extends RegisterState{
  const RegisterFailedState({DioException? error}):super(error: error);
}
