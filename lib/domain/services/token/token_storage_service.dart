import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenStorageService {
  static const _secureStorage = FlutterSecureStorage();
  static const String _authTokenKey = 'token';
  static const String _isLoggedInKey = 'isLoggedIn'; // not neccessary, check the validity

  Future<void> saveAuthToken(String token)async{
    await _secureStorage.write(key: _authTokenKey, value: token);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isLoggedInKey, true); 
  }

  Future<String?> getAuthToken()async{
    return await _secureStorage.read(key: _authTokenKey);
  }

  Future<void> deleteAuthToken()async{
    await _secureStorage.delete(key: _authTokenKey);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isLoggedInKey, false);
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isLoggedInKey) ?? false;
  }
}