class RegisterRequest {
  RegisterRequest({
      this.name, 
      this.email, 
      this.password,
      this.passwordConfirmation,});

  String? name;
  String? email;
  String? password;
  String? passwordConfirmation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['password_confirmation'] = passwordConfirmation;
    return map;
  }

}