import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/domain/services/token/token_storage_service.dart';
import 'package:food_delivery_app/presentation/pages/dash_board.dart';
import 'package:food_delivery_app/presentation/login/login_page.dart';
import 'package:food_delivery_app/presentation/register/signup_page.dart';
import 'package:food_delivery_app/presentation/router/app_routes.dart';
import 'package:go_router/go_router.dart';

import '../../core/di/dependency_injection.dart';
import '../../domain/usecases/login_usecase/login_use_case.dart';
import '../login/login_cubit/login_cubit.dart';

class AppRouter {
  final TokenStorageService _tokenStorageService;

  AppRouter(this._tokenStorageService);

  GoRouter get router => _router;

  late final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.loginPath,
        builder:
            (context, state) => BlocProvider(
              create: (context) => LoginCubit(loginUseCase: getIt.call<LoginUseCase>()),
              child: const LoginPage(),
            ),
      ),
      GoRoute(
        path: AppRoutes.signUpPath,
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        name: AppRoutes.dashboardPath,
        path: AppRoutes.dashboardPath,
        builder: (context, state) => const DashBoard(),
      ),
    ],
    redirect: (context, state) async {
      final isLoggedIn = await _tokenStorageService.isLoggedIn();
      final loggingIn = state.matchedLocation == AppRoutes.loginPath;
      final signingUp = state.matchedLocation == AppRoutes.signUpPath;

      if (!isLoggedIn) {
        if (loggingIn || signingUp) return null;
        return AppRoutes.loginPath;
      }
      if (loggingIn || signingUp) return AppRoutes.dashboardPath;
      return null;
    },
    errorBuilder:
        (context, state) => Scaffold(
          appBar: AppBar(title: Text("Error")),
          body: Center(child: Text("Page not found")),
        ),
  );
}
