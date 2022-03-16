import 'dart:convert';

import 'friend.dart';

class Prescription {
  String? id;
  String? name;
  DateTime? date;
  String? userId;
  String? friendId;
  Friend? friend;

  Prescription({
    this.id,
    this.name,
    this.date,
    this.userId,
    this.friendId,
    this.friend,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'date': date?.millisecondsSinceEpoch,
      'userId': userId,
      'friendId': friendId,
      'friend': friend?.toMap(),
    };
  }

  factory Prescription.fromMap(Map<String, dynamic>? map) {
    if (map == null) return Prescription();

    return Prescription(
      id: map['id'],
      name: map['name'],
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      userId: map['userId'],
      friendId: map['friendId'],
      friend: Friend.fromMap(map['friend']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Prescription.fromJson(String source) =>
      Prescription.fromMap(json.decode(source));
}
