import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handyman/auth/data/auth_repository/auth_repository.dart';
import 'package:handyman/auth/data/data_sources/data_sources/local/auth_local_data_source.dart';
import 'package:handyman/auth/data/data_sources/data_sources/local/auth_shared_pref_auth_local_data_sources.dart';
import 'package:handyman/auth/data/data_sources/data_sources/remote/auth_api_remote_data_source.dart';
import 'package:handyman/auth/data/models/login_request.dart';
import 'package:handyman/auth/data/models/register_request.dart';

import 'auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitial());
  final AuthRepository _authRepository = AuthRepository(
    AuthApiRemoteDataSource(),
    AuthSharedPrefAuthLocalDataSources(),
  );
  Future <void> register (RegisterRequest request) async{
try{
  emit(RegisterLoading());
  await _authRepository.register(request);
  emit(RegisterSuccess());
}catch(error){
emit(RegisterError(error.toString()));
}
  }
  Future <void> login (LoginRequest request) async{
    try{
      emit(LoginLoading());
      await _authRepository.login(request);
      emit(LoginSuccess());
    }catch(error){
      emit(LoginError(error.toString()));
    }
  }
}
