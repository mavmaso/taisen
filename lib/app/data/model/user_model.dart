import 'dart:convert';
import 'package:flutter/widgets.dart';

class UserModel {
  final int id;
  final String login;
  final String nick;

  const UserModel({
    @required this.id,
    @required this.login,
    @required this.nick,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'login': login,
      'nick': nick,
    };
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(id: $id, login: $login, nick: $nick)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.id == id &&
        other.login == login &&
        other.nick == nick;
  }

  @override
  int get hashCode => id.hashCode ^ login.hashCode ^ nick.hashCode;

  static fromMap(decode) {}
}
