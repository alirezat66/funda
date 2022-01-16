import 'dart:convert';

class Titel {
  String? omschrijving;
  int? pagina;

  Titel({this.omschrijving, this.pagina});

  factory Titel.fromMap(Map<String, dynamic> data) => Titel(
        omschrijving: data['Omschrijving'] as String?,
        pagina: data['Pagina'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'Omschrijving': omschrijving,
        'Pagina': pagina,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Titel].
  factory Titel.fromJson(String data) {
    return Titel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Titel] to a JSON string.
  String toJson() => json.encode(toMap());
}
