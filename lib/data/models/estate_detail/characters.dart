import 'dart:convert';

import 'inner_character.dart';

class Character {
  dynamic ad;
  List<InnerCharacter>? characters;
  int? lokNummer;
  Character? subCharacter;
  String? titel;

  Character({
    this.ad,
    this.characters,
    this.lokNummer,
    this.subCharacter,
    this.titel,
  });

  factory Character.fromMap(Map<String, dynamic> data) => Character(
        ad: data['Ad'] as dynamic,
        characters: (data['Kenmerken'] as List<dynamic>?)
            ?.map((e) => InnerCharacter.fromMap(e as Map<String, dynamic>))
            .toList(),
        lokNummer: data['LokNummer'] as int?,
        subCharacter: data['SubKenmerk'] == null
            ? null
            : Character.fromMap(data['SubKenmerk']!),
        titel: data['Titel'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Ad': ad,
        'Kenmerken': characters?.map((e) => e.toMap()).toList(),
        'LokNummer': lokNummer,
        'SubKenmerk': subCharacter,
        'Titel': titel,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Character].
  factory Character.fromJson(String data) {
    return Character.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Character] to a JSON string.
  String toJson() => json.encode(toMap());
}
