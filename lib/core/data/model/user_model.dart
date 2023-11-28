class UserModel {
  String? objectId;
  String? username;
  String? password;
  String? email;
  String? sessionToken;

  UserModel({
    this.objectId,
    this.username,
    this.password,
    this.email,
    this.sessionToken,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    objectId = json['objectId'];
    username = json['username'];
    password = json['password'];
    email = json['email'];
    sessionToken = json['sessionToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['password'] = password;
    data['username'] = username;
    data['email'] = email;
    return data;
  }
}
