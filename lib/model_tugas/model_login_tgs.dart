// To parse this JSON data, do
//
//     final modelLoginTugas = modelLoginTugasFromJson(jsonString);

import 'dart:convert';

ModelLoginTugas modelLoginTugasFromJson(String str) => ModelLoginTugas.fromJson(json.decode(str));

String modelLoginTugasToJson(ModelLoginTugas data) => json.encode(data.toJson());

class ModelLoginTugas {
  int value;
  String message;
  String username;
  String nama;
  String id;

  ModelLoginTugas({
    required this.value,
    required this.message,
    required this.username,
    required this.nama,
    required this.id,
  });

  factory ModelLoginTugas.fromJson(Map<String, dynamic> json) => ModelLoginTugas(
    value: json["value"],
    message: json["message"],
    username: json["username"],
    nama: json["nama"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "message": message,
    "username": username,
    "nama": nama,
    "id": id,
  };
}