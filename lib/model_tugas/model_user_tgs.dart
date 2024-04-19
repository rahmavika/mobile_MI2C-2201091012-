// To parse this JSON data, do
//
//     final modelUserTugas = modelUserTugasFromJson(jsonString);

import 'dart:convert';

ModelUserTugas modelUserTugasFromJson(String str) => ModelUserTugas.fromJson(json.decode(str));

String modelUserTugasToJson(ModelUserTugas data) => json.encode(data.toJson());

class ModelUserTugas {
  bool isSuccess;
  String message;
  List<Datum> data;

  ModelUserTugas({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  factory ModelUserTugas.fromJson(Map<String, dynamic> json) => ModelUserTugas(
    isSuccess: json["isSuccess"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String nama;
  String username;
  String password;
  String email;
  String nohp;

  Datum({
    required this.id,
    required this.nama,
    required this.username,
    required this.password,
    required this.email,
    required this.nohp,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    nama: json["nama"],
    username: json["username"],
    password: json["password"],
    email: json["email"],
    nohp: json["nohp"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nama": nama,
    "username": username,
    "password": password,
    "email": email,
    "nohp": nohp,
  };
}