import 'dart:convert';
import 'package:flutter/foundation.dart';

List<ArenaModel> arenasFromJson(String str) =>
    List<ArenaModel>.from(json.decode(str).map((x) => ArenaModel.fromJson(x)));

String arenaToJson(List<ArenaModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ArenaModel {
  int id;
  int p1Id;
  int p2Id;
  int char1Id;
  int char2Id;
  String status;

  ArenaModel({
    @required this.id,
    @required this.p1Id,
    @required this.p2Id,
    @required this.char1Id,
    @required this.char2Id,
    @required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'p1_id': p1Id,
      'p2_id': p2Id,
      'char1_id': char1Id,
      'char2_id': char2Id,
      'status': status,
    };
  }

  factory ArenaModel.fromMap(Map<String, dynamic> map) {
    return ArenaModel(
      id: map['id'],
      p1Id: map['p1_id'],
      p2Id: map['p2_id'],
      char1Id: map['char1_id'],
      char2Id: map['char2_id'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ArenaModel.fromJson(String source) =>
      ArenaModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ArenaModel(id: $id, p1_id: $p1Id, p2_id: $p2Id, char1_id: $char1Id, char2_id: $char2Id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ArenaModel &&
        other.id == id &&
        other.p1Id == p1Id &&
        other.p2Id == p2Id &&
        other.char1Id == char1Id &&
        other.char2Id == char2Id &&
        other.status == status;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        p1Id.hashCode ^
        p2Id.hashCode ^
        char1Id.hashCode ^
        char2Id.hashCode ^
        status.hashCode;
  }
}
