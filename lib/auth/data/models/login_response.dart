class LoginResponse {
  LoginResponse({
    required  this.accessToken,
    required this.tokenType,
    required this.expiresIn,});

  LoginResponse.fromJson(dynamic json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
  }
  String? accessToken;
  String? tokenType;
  int? expiresIn;



}