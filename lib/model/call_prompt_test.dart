import 'dart:convert';

class PromptCallTest {
  String? id;
  String? name;
  String? category;
  int? daysOfTreat;
  int? pillsPerDay;

  PromptCallTest({
    this.id,
    this.name,
    this.category,
    this.daysOfTreat,
    this.pillsPerDay,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'daysOfTreat': daysOfTreat,
      'pillsPerDay': pillsPerDay,
    };
  }

  factory PromptCallTest.fromMap(Map<String, dynamic>? map) {
    if (map == null) return PromptCallTest();

    return PromptCallTest(
      id: map['id'],
      name: map['name'],
      category: map['category'],
      daysOfTreat: map['daysOfTreat'],
      pillsPerDay: map['pillsPerDay'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PromptCallTest.fromJson(String source) =>
      PromptCallTest.fromMap(json.decode(source));
}
