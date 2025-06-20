import 'package:food_delivery_app/core/storage/data_state.dart';
import 'package:food_delivery_app/data/models/auth_response_model/auth_response_model.dart';
import 'package:food_delivery_app/data/models/restaurant/restaurant_model.dart';
import 'package:food_delivery_app/data/models/user_model/user_model.dart';

abstract class RestaurantRepository {
  Future<DataState<List<RestaurantModel>>>getAllRestaurants({
    required int page,
    required int limit,
    String? sort,
    String? search,
    String? category,
  });

  Future<AuthResponseModel> login({String email, String passowrd});

  Future<UserModel> register({
    String email,
    String password,
    String name,
    String phone,
    String address,
  });
}