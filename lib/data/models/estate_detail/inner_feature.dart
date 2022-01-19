import 'dart:convert';

class InnerFeature {
  String name;
  String value;
  String? nameCss;
  InnerFeature({
    required this.name,
    required this.value,
    this.nameCss,
  });

  Map<String, dynamic> toMap() {
    return {
      'Naam': name,
      'Waarde': value,
      'NaamCss': nameCss,
    };
  }

  factory InnerFeature.fromMap(Map<String, dynamic> map) {
    return InnerFeature(
      name: map['Naam'] ?? '',
      value: map['Waarde'] ?? '',
      nameCss: map['NaamCss'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory InnerFeature.fromJson(String source) =>
      InnerFeature.fromMap(json.decode(source));

  @override
  String toString() => 'InnerCharacter(name: $name, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InnerFeature && other.name == name && other.value == value;
  }

  @override
  int get hashCode => name.hashCode ^ value.hashCode;
}
