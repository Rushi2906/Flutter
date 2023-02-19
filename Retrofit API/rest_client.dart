import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:simple_interest_calc/model/user_list_model/UserListDemo.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://6312e462b466aa9b038f4bc1.mockapi.io/")
abstract class RestClient{
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("faculties")
  Future<String> getTask();

  @GET("faculties/{id}")
  Future<UserListDemo> getById(@Path('id') id);

  @POST("faculties")
  @FormUrlEncoded()
  Future<UserListDemo> createTask(@Body() UserListDemo task);

  @PUT("faculties/{id}")
  Future<UserListDemo> updateTask(@Path("id") id,@Body() UserListDemo task);
}