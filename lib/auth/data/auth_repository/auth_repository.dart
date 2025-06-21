import 'package:handyman/auth/data/data_sources/data_sources/local/auth_local_data_source.dart';
import 'package:handyman/auth/data/data_sources/data_sources/remote/auth_remote_data_sources.dart';
import 'package:handyman/auth/data/models/login_request.dart';
import 'package:handyman/auth/data/models/login_response.dart';
import 'package:handyman/auth/data/models/register_request.dart';
import 'package:handyman/auth/data/models/register_response.dart';

class AuthRepository {
  final AuthRemoteDataSources _authRemoteDataSources;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepository(this._authRemoteDataSources,
      this._authLocalDataSource,);

  Future <LoginResponse> login(LoginRequest request) async {
    final response = await _authRemoteDataSources.login(request);
    await _authLocalDataSource.saveToken(response.accessToken as String);
    return response;
  }

  Future<RegisterResponse> register(RegisterRequest request) async {
    final response = await _authRemoteDataSources.register(request);
    await _authLocalDataSource.saveToken(response.id as String);
    return response;
  }
}
