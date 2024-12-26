class UserModel {
  int? id;
  String? username;
  String? name;
  String? email;
  String? profilePhotoUrl;
  String? token;

  UserModel({
    this.id,
    this.email,
    this.name,
    this.profilePhotoUrl,
    this.token,
    this.username,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    email = json['email'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'usename': username,
      'email': email,
      'profile_photo_url': profilePhotoUrl,
      'token': token,
    };
  }
}