import 'dart:convert';

class BezichtingDagdelen {
  String? naam;
  String? waarde;

  BezichtingDagdelen({this.naam, this.waarde});

  factory BezichtingDagdelen.fromMap(Map<String, dynamic> data) {
    return BezichtingDagdelen(
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
  /// Parses the string and returns the resulting Json object as [BezichtingDagdelen].
  factory BezichtingDagdelen.fromJson(String data) {
    return BezichtingDagdelen.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [BezichtingDagdelen] to a JSON string.
  String toJson() => json.encode(toMap());
}
