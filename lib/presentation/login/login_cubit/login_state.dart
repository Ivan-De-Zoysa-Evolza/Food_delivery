part of "login_cubit.dart";

abstract class LoginState extends Equatable {
  final AuthResponseModel? authModel;
  final LoginUserModel? loginUserModel;
  final DioException? error;

  const LoginState({ this.authModel,this.loginUserModel, this.error});

  @override
  List<Object?> get props => [authModel,error];
}

class LoginInitialState extends LoginState {
  const LoginInitialState({AuthResponseModel? authModel, DioException? error}):super(authModel: authModel, error: error);
}

class LoginSuccessState extends LoginState {
  const LoginSuccessState({LoginUserModel? loginModel, DioException? error}):super(loginUserModel: loginModel, error: error);
}

class LoginLoadingState extends LoginState {
  const LoginLoadingState({AuthResponseModel? authModel, DioException? error}):super(authModel: authModel, error: error);
}

class LoginFailureState extends LoginState {
  const LoginFailureState({ DioException? error}):super( error: error);
}