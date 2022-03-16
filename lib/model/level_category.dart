import 'dart:convert';

class LevelCategory {
  int? id;
  String? name;
  String? imagePath;

  LevelCategory({
    this.id,
    this.name,
    this.imagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imagePath': imagePath,
    };
  }

  factory LevelCategory.fromMap(Map<String, dynamic>? map) {
    if (map == null) return LevelCategory();

    return LevelCategory(
      id: map['id'],
      name: map['name'],
      imagePath: map['imagePath'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LevelCategory.fromJson(String source) =>
      LevelCategory.fromMap(json.decode(source));
}

final healthCategories = [
  LevelCategory(
    id: 0,
    name: 'category_women_health',
    imagePath: 'assets/images/pregnant.png',
  ),
  LevelCategory(
    id: 1,
    name: 'category_skin',
    imagePath: 'assets/images/personal-care.png',
  ),
  LevelCategory(
    id: 2,
    name: 'category_child',
    imagePath: 'assets/images/baby.png',
  ),
  LevelCategory(
    id: 3,
    name: 'category_general_physician',
    imagePath: 'assets/images/stethoscope.png',
  ),
  LevelCategory(
    id: 4,
    name: 'category_dental',
    imagePath: 'assets/images/dental-care.png',
  ),
  LevelCategory(
    id: 5,
    name: 'category_ear',
    imagePath: 'assets/images/throat.png',
  ),
  LevelCategory(
    id: 6,
    name: 'category_homoetherapy',
    imagePath: 'assets/images/medicine.png',
  ),
  LevelCategory(
    id: 7,
    name: 'category_bone',
    imagePath: 'assets/images/knee.png',
  ),
  LevelCategory(
    id: 8,
    name: 'category_sex_specialist',
    imagePath: 'assets/images/sex.png',
  ),
  LevelCategory(
    id: 9,
    name: 'category_eye',
    imagePath: 'assets/images/view.png',
  ),
  LevelCategory(
    id: 10,
    name: 'category_digestive',
    imagePath: 'assets/images/stomach.png',
  ),
  LevelCategory(
    id: 11,
    name: 'category_mental',
    imagePath: 'assets/images/love.png',
  ),
  LevelCategory(
    id: 12,
    name: 'category_physiotherapy',
    imagePath: 'assets/images/healthcare-and-medical.png',
  ),
  LevelCategory(
    id: 13,
    name: 'category_diabetes',
    imagePath: 'assets/images/glucosemeter.png',
  ),
  LevelCategory(
    id: 14,
    name: 'category_brain',
    imagePath: 'assets/images/stethoscope-2.png',
  ),
  LevelCategory(
    id: 15,
    name: 'category_general_surgery',
    imagePath: 'assets/images/surgeon.png',
  ),
  LevelCategory(
    id: 16,
    name: 'category_lungs',
    imagePath: 'assets/images/lungs.png',
  ),
  LevelCategory(
    id: 17,
    name: 'category_heart',
    imagePath: 'assets/images/electrocardiogram.png',
  ),
  LevelCategory(
    id: 18,
    name: 'category_cancer',
    imagePath: 'assets/images/ribbon.png',
  ),
];
