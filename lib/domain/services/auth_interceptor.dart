import 'package:dio/dio.dart';
import 'package:food_delivery_app/domain/services/token/token_storage_service.dart';

class AuthInterceptor extends Interceptor {
  final TokenStorageService _tokenStorageService;

  AuthInterceptor(this._tokenStorageService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _tokenStorageService.getAuthToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // You can add logic here to handle 401 Unauthorized responses,
    // e.g., clear token and redirect to login
    if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
      print('Unauthorized access. Clearing token...');
      await _tokenStorageService.deleteAuthToken();
      // Potentially navigate to login screen using GoRouter here
      // Navigator.of(err.requestOptions.context!).pushReplacementNamed('/login'); // If using traditional Navigator
      // For GoRouter, you'd typically handle this in a listener or a state management solution
      // that responds to the token being cleared.
    }
    super.onError(err, handler);
  }
}