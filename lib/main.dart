import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/di/dependency_injection.dart';
import 'package:food_delivery_app/domain/services/token/token_storage_service.dart';
import 'package:food_delivery_app/presentation/router/app_router.dart';

final TokenStorageService tokenStorageService = TokenStorageService();
void main(){
  setupDI();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter(tokenStorageService);

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
    routerConfig: _appRouter.router,
    );
  }
}