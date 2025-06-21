class RegisterResponse {
  RegisterResponse({
    required this.name,
    required this.email,
    required this.id,
  });

  RegisterResponse.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];

    id = json['id'];
  }
  String? name;
  String? email;
  int? id;

}
