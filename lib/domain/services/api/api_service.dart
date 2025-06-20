import 'package:dio/dio.dart';
import 'package:food_delivery_app/data/models/auth_response_model/auth_response_model.dart';
import 'package:food_delivery_app/data/models/login_user_model/login_user_model.dart';
import 'package:food_delivery_app/data/models/register_user_model/register_user_model.dart';
import 'package:food_delivery_app/data/models/user_model/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:food_delivery_app/data/models/paginated_response_model/paginated_response_model.dart';
import 'package:food_delivery_app/data/models/restaurant/restaurant_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "http://localhost:8080/api/v1")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/restaurants')
  Future<PaginatedResponseModel<RestaurantModel>> getAllRestaurant({
    @Query("page") int page = 1,
    @Query("limit") int limit = 10,
    @Query("sort") String? sort,
    @Query("search") String? search,
    @Query("category") String? category,
  });

  @POST("/auth/register")
  Future<HttpResponse<UserModel>>register(@Body() RegisterUserModel request);

  @POST("/auth/login")
  Future<HttpResponse<AuthResponseModel>>login(@Body() LoginUserModel request);
}