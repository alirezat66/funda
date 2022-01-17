import 'dart:convert';

class ViewDays {
  String? naam;
  String? value;

  ViewDays({this.naam, this.value});

  factory ViewDays.fromMap(Map<String, dynamic> data) {
    return ViewDays(
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
  /// Parses the string and returns the resulting Json object as [ViewDays].
  factory ViewDays.fromJson(String data) {
    return ViewDays.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ViewDays] to a JSON string.
  String toJson() => json.encode(toMap());
}
