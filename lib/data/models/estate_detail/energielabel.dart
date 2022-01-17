import 'dart:convert';

class Energielabel {
  bool? definitief;
  dynamic index;
  String? label;
  bool? nietBeschikbaar;
  bool? nietVerplicht;

  Energielabel({
    this.definitief,
    this.index,
    this.label,
    this.nietBeschikbaar,
    this.nietVerplicht,
  });

  factory Energielabel.fromMap(Map<String, dynamic> data) => Energielabel(
        definitief: data['Definitief'] as bool?,
        index: data['Index'] as dynamic,
        label: data['Label'] as String?,
        nietBeschikbaar: data['NietBeschikbaar'] as bool?,
        nietVerplicht: data['NietVerplicht'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'Definitief': definitief,
        'Index': index,
        'Label': label,
        'NietBeschikbaar': nietBeschikbaar,
        'NietVerplicht': nietVerplicht,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Energielabel].
  factory Energielabel.fromJson(String data) {
    return Energielabel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Energielabel] to a JSON string.
  String toJson() => json.encode(toMap());
}
