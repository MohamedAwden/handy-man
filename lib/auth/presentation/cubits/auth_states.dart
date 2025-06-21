abstract class AuthStates {}

class AuthInitial extends AuthStates {}

class RegisterLoading extends AuthStates {}

class RegisterSuccess extends AuthStates {}

class RegisterError extends AuthStates {
  final String message;
  RegisterError(this.message);
}

class LoginLoading extends AuthStates {}

class LoginSuccess extends AuthStates {}

class LoginError extends AuthStates {
  final String message;
  LoginError(this.message);
}
