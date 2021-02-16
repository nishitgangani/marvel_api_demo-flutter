// To parse this JSON data, do
//
//     final model = modelFromJson(jsonString);

import 'dart:convert';

List<Model> modelFromJson(String str) => List<Model>.from(json.decode(str).map((x) => Model.fromJson(x)));

String modelToJson(List<Model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Model {
  Model({
    this.name,
    this.realname,
    this.team,
    this.firstappearance,
    this.createdby,
    this.publisher,
    this.imageurl,
    this.bio,
  });

  String name;
  String realname;
  String team;
  String firstappearance;
  String createdby;
  String publisher;
  String imageurl;
  String bio;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    name: json["name"],
    realname: json["realname"],
    team: json["team"],
    firstappearance: json["firstappearance"],
    createdby: json["createdby"],
    publisher: json["publisher"],
    imageurl: json["imageurl"],
    bio: json["bio"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "realname": realname,
    "team": team,
    "firstappearance": firstappearance,
    "createdby": createdby,
    "publisher": publisher,
    "imageurl": imageurl,
    "bio": bio,
  };
}
