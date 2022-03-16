import 'dart:convert';

import 'friend.dart';

class Booking {
  String? id;
  Friend? friend;
  String? friendId;
  String? userId;
  String? date; // Monday, 3 Feb
  String? formattedDate; // dd-MM-yyyy
  String? time; // 08:00 AM
  String? user;
  String? mobile;
  String? userMobile;
  String? email;
  int? studyTip;

  Booking({
    this.id,
    this.friend,
    this.friendId,
    this.userId,
    this.date,
    this.formattedDate,
    this.time,
    this.user,
    this.mobile,
    this.userMobile,
    this.email,
    this.studyTip,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'friend': friend?.toMap(),
      'friendId': friendId,
      'userId': userId,
      'date': date,
      'formattedDate': formattedDate,
      'time': time,
      'user': user,
      'mobile': mobile,
      'userMobile': userMobile,
      'email': email,
      'studyTip': studyTip,
    };
  }

  factory Booking.fromMap(Map<String, dynamic>? map) {
    if (map == null) return Booking();

    return Booking(
      id: map['id'],
      friend: Friend.fromMap(map['friend']),
      friendId: map['friendId'],
      userId: map['userId'],
      date: map['date'],
      formattedDate: map['formattedDate'],
      time: map['time'],
      user: map['user'],
      mobile: map['mobile'],
      userMobile: map['userMobile'],
      email: map['email'],
      studyTip: map['studyTip'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Booking.fromJson(String source) =>
      Booking.fromMap(json.decode(source));
}
