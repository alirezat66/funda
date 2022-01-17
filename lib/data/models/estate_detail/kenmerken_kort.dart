import 'dart:convert';

import 'characters.dart';

class KenmerkenKort {
  dynamic ad;
  List<Character>? kenmerken;
  int? lokNummer;
  dynamic subKenmerk;
  dynamic titel;

  KenmerkenKort({
    this.ad,
    this.kenmerken,
    this.lokNummer,
    this.subKenmerk,
    this.titel,
  });

  factory KenmerkenKort.fromMap(Map<String, dynamic> data) => KenmerkenKort(
        ad: data['Ad'] as dynamic,
        kenmerken: (data['Kenmerken'] as List<dynamic>?)
            ?.map((e) => Character.fromMap(e as Map<String, dynamic>))
            .toList(),
        lokNummer: data['LokNummer'] as int?,
        subKenmerk: data['SubKenmerk'] as dynamic,
        titel: data['Titel'] as dynamic,
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
  /// Parses the string and returns the resulting Json object as [KenmerkenKort].
  factory KenmerkenKort.fromJson(String data) {
    return KenmerkenKort.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [KenmerkenKort] to a JSON string.
  String toJson() => json.encode(toMap());
}
