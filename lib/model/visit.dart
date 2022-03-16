import 'dart:convert';

class Visit {
  String? id;
  DateTime? date;
  String? address;
  String? diagnosis;
  String? recommendation;
  String? userId;
  String? friendId;

  Visit({
    this.id,
    this.date,
    this.address,
    this.diagnosis,
    this.recommendation,
    this.userId,
    this.friendId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date?.millisecondsSinceEpoch,
      'address': address,
      'diagnosis': diagnosis,
      'recommendation': recommendation,
      'userId': userId,
      'doctorId': friendId,
    };
  }

  factory Visit.fromMap(Map<String, dynamic>? map) {
    if (map == null) return Visit();

    return Visit(
      id: map['id'],
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      address: map['address'],
      diagnosis: map['diagnosis'],
      recommendation: map['recommendation'],
      userId: map['userId'],
      friendId: map['friendId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Visit.fromJson(String source) => Visit.fromMap(json.decode(source));
}
