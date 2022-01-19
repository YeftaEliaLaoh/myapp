import 'dart:convert';

List userModelFromJson(String str) =>
    List.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List data) =>
    json.encode(List.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    required this.idUser,
    required this.namaUser,
    required this.emailUser,
    required this.alamatUser,
  });

  String idUser;
  String namaUser;
  String emailUser;
  String alamatUser;

  factory UserModel.fromJson(Map json) => UserModel(
        idUser: json["id_user"],
        namaUser: json["nama_user"],
        emailUser: json["email_user"],
        alamatUser: json["alamat_user"],
      );

  Map toJson() => {
        "id_user": idUser,
        "nama_user": namaUser,
        "email_user": emailUser,
        "alamat_user": alamatUser,
      };
}
