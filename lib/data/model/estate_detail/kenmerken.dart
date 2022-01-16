import 'dart:convert';

import 'kenmerken.dart';

class Kenmerken {
  dynamic ad;
  List<Kenmerken>? kenmerken;
  int? lokNummer;
  dynamic subKenmerk;
  String? titel;

  Kenmerken({
    this.ad,
    this.kenmerken,
    this.lokNummer,
    this.subKenmerk,
    this.titel,
  });

  factory Kenmerken.fromMap(Map<String, dynamic> data) => Kenmerken(
        ad: data['Ad'] as dynamic,
        kenmerken: (data['Kenmerken'] as List<dynamic>?)
            ?.map((e) => Kenmerken.fromMap(e as Map<String, dynamic>))
            .toList(),
        lokNummer: data['LokNummer'] as int?,
        subKenmerk: data['SubKenmerk'] as dynamic,
        titel: data['Titel'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Ad': ad,
        'Kenmerken': kenmerken?.map((e) => e.toMap()).toList(),
        'LokNummer': lokNummer,
        'SubKenmerk': subKenmerk,
        'Titel': titel,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Kenmerken].
  factory Kenmerken.fromJson(String data) {
    return Kenmerken.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Kenmerken] to a JSON string.
  String toJson() => json.encode(toMap());
}
