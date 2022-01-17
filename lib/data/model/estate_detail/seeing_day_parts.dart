import 'dart:convert';

class SeeingDayPart {
  String? naam;
  String? value;

  SeeingDayPart({this.naam, this.value});

  factory SeeingDayPart.fromMap(Map<String, dynamic> data) {
    return SeeingDayPart(
      naam: data['Naam'] as String?,
      value: data['Waarde'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'Naam': naam,
        'Waarde': value,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SeeingDayPart].
  factory SeeingDayPart.fromJson(String data) {
    return SeeingDayPart.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SeeingDayPart] to a JSON string.
  String toJson() => json.encode(toMap());
}
