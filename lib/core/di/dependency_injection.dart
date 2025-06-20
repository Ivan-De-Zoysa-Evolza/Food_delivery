import 'package:dio/dio.dart';
import 'package:food_delivery_app/data/repo_impl/auth_repo_impl/auth_repo_impl.dart';
import 'package:food_delivery_app/data/repository/auth_repository/auth_respository.dart';
import 'package:food_delivery_app/domain/services/api/api_service.dart';
import 'package:food_delivery_app/domain/services/token/token_storage_service.dart';
import 'package:food_delivery_app/domain/usecases/login_usecase/login_use_case.dart';
import 'package:food_delivery_app/domain/usecases/register_usecase/register_usecase.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDI() async {
  // getIt.registerLazySingleton<Dio>;
  final dio = Dio();

  // dio.interceptors.add(TokenInterceptor(

  //   sharedPrefManager: sharedPrefManager,

  // ));

  dio.interceptors.add(LogInterceptor(
    request: true,
    requestHeader: true,
    requestBody: true,
    responseHeader: true,
    responseBody: true,
    error: true,
    logPrint: (object) => print(object),
  ));



  getIt.registerSingleton<Dio>(dio);

  // services
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>(),baseUrl: "http://localhost:8080/api/v1/"));

  getIt.registerLazySingleton<TokenStorageService>(() => TokenStorageService());

  // repository and repo impl

  getIt.registerLazySingleton<AuthRespository>(
    () => AuthRepoImpl(getIt(),getIt()));

  // usecases
 getIt.registerLazySingleton<LoginUseCase>(() => LoginUseCase(authRespository: getIt()));

 getIt.registerLazySingleton<RegisterUsecase>(() => RegisterUsecase(authRespository: getIt()));
}
