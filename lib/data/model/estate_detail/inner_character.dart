import 'dart:convert';

class InnerCharacter {
String name;
String  value;
String? nameCss;
  InnerCharacter({
    required this.name,
    required this.value,
    this.nameCss,
  });



  Map<String, dynamic> toMap() {
    return {
      'Naam': name,
      'Waarde': value,
      'NaamCss' : nameCss,
    };
  }

  factory InnerCharacter.fromMap(Map<String, dynamic> map) {
    return InnerCharacter(
      name: map['Naam'] ?? '',
      value: map['Waarde'] ?? '',
      nameCss: map['NaamCss'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory InnerCharacter.fromJson(String source) => InnerCharacter.fromMap(json.decode(source));

  @override
  String toString() => 'InnerCharacter(name: $name, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is InnerCharacter &&
      other.name == name &&
      other.value == value;
  }

  @override
  int get hashCode => name.hashCode ^ value.hashCode;
}
