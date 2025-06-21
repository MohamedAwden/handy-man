import 'package:dio/dio.dart';
import 'package:handyman/auth/data/data_sources/data_sources/remote/auth_remote_data_sources.dart';
import 'package:handyman/auth/data/models/login_request.dart';
import 'package:handyman/auth/data/models/login_response.dart';
import 'package:handyman/auth/data/models/register_request.dart';
import 'package:handyman/auth/data/models/register_response.dart';

class AuthApiRemoteDataSource implements AuthRemoteDataSources {
  final Dio dio = Dio(BaseOptions(baseUrl: "https://test.sbranker.com"));

  @override
  Future<LoginResponse> login(LoginRequest request) async {
    final response = await dio.post(
      '/api/auth/login',
      data: request.toJson(),
    );
    return LoginResponse.fromJson(response.data) ;
  }

  @override
  Future<RegisterResponse> register (RegisterRequest request) async {
    final response = await dio.post(
      '/api/auth/register',
      data: request.toJson(),
    );
   return RegisterResponse.fromJson(response.data) ;
  }
}
