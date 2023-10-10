class UserModel {
  String? objectId;
  String? username;
  String? email;
  String? sessionToken;

  UserModel({
    this.objectId,
    this.username,
    this.email,
    this.sessionToken,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    objectId = json['objectId'];
    username = json['username'];
    email = json['email'];
    sessionToken = json['sessionToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['objectId'] = objectId;
    data['username'] = username;
    data['email'] = email;
    return data;
  }
}
