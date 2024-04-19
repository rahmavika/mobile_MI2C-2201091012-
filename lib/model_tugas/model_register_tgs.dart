// To parse this JSON data, do
//
//     final modelRegisterTugas = modelRegisterTugasFromJson(jsonString);

import 'dart:convert';

ModelRegisterTugas modelRegisterTugasFromJson(String str) => ModelRegisterTugas.fromJson(json.decode(str));

String modelRegisterTugasToJson(ModelRegisterTugas data) => json.encode(data.toJson());

class ModelRegisterTugas {
  int value;
  String message;

  ModelRegisterTugas({
    required this.value,
    required this.message,
  });

  factory ModelRegisterTugas.fromJson(Map<String, dynamic> json) => ModelRegisterTugas(
    value: json["value"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "message": message,
  };
}
