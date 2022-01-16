import 'dart:convert';

class BezichtingDagen {
  String? naam;
  String? waarde;

  BezichtingDagen({this.naam, this.waarde});

  factory BezichtingDagen.fromMap(Map<String, dynamic> data) {
    return BezichtingDagen(
      naam: data['Naam'] as String?,
      waarde: data['Waarde'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'Naam': naam,
        'Waarde': waarde,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [BezichtingDagen].
  factory BezichtingDagen.fromJson(String data) {
    return BezichtingDagen.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [BezichtingDagen] to a JSON string.
  String toJson() => json.encode(toMap());
}
