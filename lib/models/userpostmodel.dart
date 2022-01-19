import 'dart:convert';

UserpostModel userpostModelFromJson(String str) =>
    UserpostModel.fromJson(json.decode(str));

String userpostModelToJson(UserpostModel data) => json.encode(data.toJson());

class UserpostModel {
  UserpostModel({
    required this.namaUser,
    required this.emailUser,
    required this.alamatUser,
  });

  String namaUser;
  String emailUser;
  String alamatUser;

  factory UserpostModel.fromJson(Map json) => UserpostModel(
        namaUser: json["nama_user"],
        emailUser: json["email_user"],
        alamatUser: json["alamat_user"],
      );

  Map toJson() => {
        "nama_user": namaUser,
        "email_user": emailUser,
        "alamat_user": alamatUser,
      };
}
