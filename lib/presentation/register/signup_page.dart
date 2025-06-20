import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/core/constants/app_colors.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/constants/app_text.dart';
import 'package:food_delivery_app/core/di/dependency_injection.dart';
import 'package:food_delivery_app/core/storage/data_state.dart';
import 'package:food_delivery_app/data/models/register_user_model/register_user_model.dart';
import 'package:food_delivery_app/domain/usecases/register_usecase/register_usecase.dart';
import 'package:food_delivery_app/presentation/register/register_cubit/register_cubit.dart';
import 'package:food_delivery_app/presentation/router/app_routes.dart';
import 'package:food_delivery_app/presentation/widgets/app_button.dart';
import 'package:food_delivery_app/presentation/widgets/app_text_field.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  bool isUser = true;
  String email = "";
  String password = "";
  String confirmPassowrd = "";
  String name = "Sadaru";
  String phone = "0714003640";
  String address = "45/88, katubadda, moratuwa";

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signUp(BuildContext context) async {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      setState(() {
        email = _emailController.text;
        password = _passwordController.text;
        confirmPassowrd = _confirmPasswordController.text;
      });
      final registerModel = RegisterUserModel(
        name: name,
        email: email,
        password: password,
        phone: phone,
        address: address,
      );
      final response = await context.read<RegisterCubit>().register(
        registerModel,
      );

      if (response is DataSuccess) {
        print("Register unaa");
        context.go(AppRoutes.dashboardPath);
      } else {
        SnackBar(content: Text("Failed to Register"));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(registerUsecase: getIt.call<RegisterUsecase>()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(color: AppColors.black),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: GestureDetector(
                            onTap: () {
                              context.go(AppRoutes.loginPath);
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: AppColors.black,
                                size: 17,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 30),
                              Text("Sign Up", style: AppText.headings),
                              Text(AppStrings.signUp, style: AppText.subHeadings),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned.directional(
                  textDirection: TextDirection.ltr,
                  top: 230,
                  start: 0,
                  end: 0,
                  child: Container(
                    padding: EdgeInsets.all(25),
                    height: 700,
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
                          Text("NAME", style: AppText.labelText),
                          SizedBox(height: 10),
                          AppTextField(
                            hintText: "john doe",
                            controller: _nameController,
                            validaor: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your name";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
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
                                return "Please enter a valid email address";
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
                                return 'Please enter your password';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                            sufixIcon: Icon(
                              Icons.remove_red_eye,
                              color: AppColors.inputColor,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("CONFIRM PASSWORD", style: AppText.labelText),
                          SizedBox(height: 10),
                          AppTextField(
                            hintText: ".  .  .  .  .  .  .  .  .",
                            controller: _confirmPasswordController,
                            validaor: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              if (value != _passwordController.text) {
                                return "Enter same password";
                              }
                              return null;
                            },
                            sufixIcon: Icon(
                              Icons.remove_red_eye,
                              color: AppColors.inputColor,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text("SIGN UP AS", style: AppText.labelText),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),

                                  border: Border.all(color: AppColors.inputColor),
                                ),
                                // child: Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //   children: [
                                //     GestureDetector(
                                //       onTap: () {
                                //         setState(() {
                                //           isUser = true;
                                //         });
                                //       },
                                //       child: Container(
                                //         decoration: BoxDecoration(
                                //           borderRadius: BorderRadius.circular(50),
                                //           color:
                                //               isUser
                                //                   ? AppColors.yellow
                                //                   : Colors.transparent,
                                //         ),
                                //         padding: EdgeInsets.symmetric(
                                //           horizontal: 30,
                                //           vertical: 15,
                                //         ),
                                //         child: Text(
                                //           "User",
                                //           style:
                                //               isUser
                                //                   ? AppText.toggleWhiteText
                                //                   : AppText.toggleText,
                                //         ),
                                //       ),
                                //     ),
                                //     // GestureDetector(
                                //     //   onTap: () {
                                //     //     setState(() {
                                //     //       isUser = false;
                                //     //     });
                                //     //   },
                                //     //   child: Container(
                                //     //     decoration: BoxDecoration(
                                //     //       borderRadius: BorderRadius.circular(50),
                                //     //       color:
                                //     //           isUser
                                //     //               ? Colors.transparent
                                //     //               : AppColors.yellow,
                                //     //     ),
                                //     //     padding: EdgeInsets.symmetric(
                                //     //       horizontal: 20,
                                //     //       vertical: 15,
                                //     //     ),
                                //     //     child: Text(
                                //     //       "Merchant",
                                //     //       style:
                                //     //           isUser
                                //     //               ? AppText.toggleText
                                //     //               : AppText.toggleWhiteText,
                                //     //     ),
                                //     //   ),
                                //     // ),
                                //   ],
                                // ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          AppButton(
                            text: "SIGN UP",
                            buttonColor: AppColors.yellow,
                            onPressed: () => _signUp(context),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
