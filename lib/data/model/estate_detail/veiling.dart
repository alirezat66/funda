import 'dart:convert';

class Veiling {
  dynamic eindDatum;
  dynamic link;
  dynamic startDatum;
  dynamic veilingPartij;

  Veiling({this.eindDatum, this.link, this.startDatum, this.veilingPartij});

  factory Veiling.fromMap(Map<String, dynamic> data) => Veiling(
        eindDatum: data['EindDatum'] as dynamic,
        link: data['Link'] as dynamic,
        startDatum: data['StartDatum'] as dynamic,
        veilingPartij: data['VeilingPartij'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'EindDatum': eindDatum,
        'Link': link,
        'StartDatum': startDatum,
        'VeilingPartij': veilingPartij,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Veiling].
  factory Veiling.fromJson(String data) {
    return Veiling.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Veiling] to a JSON string.
  String toJson() => json.encode(toMap());
}
