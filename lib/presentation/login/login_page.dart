import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/core/constants/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/constants/app_text.dart';
import 'package:food_delivery_app/core/di/dependency_injection.dart';
import 'package:food_delivery_app/core/storage/data_state.dart';
import 'package:food_delivery_app/data/models/login_user_model/login_user_model.dart';
import 'package:food_delivery_app/domain/services/token/token_storage_service.dart';
import 'package:food_delivery_app/domain/usecases/login_usecase/login_use_case.dart';
import 'package:food_delivery_app/presentation/login/login_cubit/login_cubit.dart';
import 'package:food_delivery_app/presentation/router/app_routes.dart';
import 'package:food_delivery_app/presentation/widgets/app_button.dart';
import 'package:food_delivery_app/presentation/widgets/app_text_field.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TokenStorageService _tokenStorageService = TokenStorageService();
  // //final AuthService auth = AuthService();
  // late final AuthRepoImpl _authRepoImpl;
  // final ApiService apiService = ApiService(dio, baseUrl: "http://localhost:8080/api/v1/");
  bool _rememberMe = false;
  String email = "";
  String password = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() async {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      setState(() {
        email = _emailController.text;
        password = _passwordController.text;
      });

      final loginModel = LoginUserModel(email: email, password: password);

      final response = await context.read<LoginCubit>().login(loginModel);
      final token = await _tokenStorageService.saveAuthToken(response.data!.token);
      // final state = context.read<LoginCubit>().state;
      // if(state is RegisterInitialState){

      // }

      if (response is DataSuccess) {
        print("wade hari....");
        context.go(AppRoutes.dashboardPath);
      } else{
        SnackBar(content: Text("Failed to login"));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(loginUseCase: getIt.call<LoginUseCase>()),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(color: AppColors.black),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 120),
                    Text("Log In", style: AppText.headings),
                    Text(AppStrings.login, style: AppText.subHeadings),
                  ],
                ),
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.ltr,
              top: 250,
              start: 0,
              end: 0,
              child: Container(
                padding: EdgeInsets.all(25),
                height: 650,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("EMAIL", style: AppText.labelText),
                      SizedBox(height: 10),
                      AppTextField(
                        hintText: "example@gmail.com",
                        controller: _emailController,
                        validaor: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          }
                          if (!EmailValidator.validate(value)) {
                            return "PLease enter a valid email address";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      Text("PASSWORD", style: AppText.labelText),
                      SizedBox(height: 10),
                      AppTextField(
                        hintText: ".  .  .  .  .  .  .  .  .",
                        controller: _passwordController,
                        validaor: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          }
                          if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                        sufixIcon: Icon(
                          Icons.remove_red_eye,
                          color: AppColors.inputColor,
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: _rememberMe,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _rememberMe = value!;
                                  });
                                },
                              ),
                              Text("Remember me", style: AppText.hintStyle),
                            ],
                          ),
                          Text(
                            "Forgot Password",
                            style: AppText.hintStyle.copyWith(
                              color: AppColors.yellow,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      AppButton(
                        text: "LOG IN",
                        buttonColor: AppColors.yellow,
                        onPressed: _login,
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: AppText.bodyText,
                          ),
                          SizedBox(width: 12),
                          GestureDetector(
                            onTap: () {
                              context.go(AppRoutes.signUpPath);
                            },
                            child: Text(
                              "SIGN UP",
                              style: AppText.hintStyle.copyWith(
                                color: AppColors.yellow,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget mid(){
      return Row();
    }
  
}
