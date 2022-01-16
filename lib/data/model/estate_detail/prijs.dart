import 'dart:convert';

class Prijs {
  dynamic geenExtraKosten;
  String? huurAbbreviation;
  dynamic huurprijs;
  String? huurprijsOpAanvraag;
  dynamic huurprijsTot;
  String? koopAbbreviation;
  int? koopprijs;
  String? koopprijsOpAanvraag;
  dynamic koopprijsTot;
  dynamic originelePrijs;
  String? veilingText;

  Prijs({
    this.geenExtraKosten,
    this.huurAbbreviation,
    this.huurprijs,
    this.huurprijsOpAanvraag,
    this.huurprijsTot,
    this.koopAbbreviation,
    this.koopprijs,
    this.koopprijsOpAanvraag,
    this.koopprijsTot,
    this.originelePrijs,
    this.veilingText,
  });

  factory Prijs.fromMap(Map<String, dynamic> data) => Prijs(
        geenExtraKosten: data['GeenExtraKosten'] as dynamic,
        huurAbbreviation: data['HuurAbbreviation'] as String?,
        huurprijs: data['Huurprijs'] as dynamic,
        huurprijsOpAanvraag: data['HuurprijsOpAanvraag'] as String?,
        huurprijsTot: data['HuurprijsTot'] as dynamic,
        koopAbbreviation: data['KoopAbbreviation'] as String?,
        koopprijs: data['Koopprijs'] as int?,
        koopprijsOpAanvraag: data['KoopprijsOpAanvraag'] as String?,
        koopprijsTot: data['KoopprijsTot'] as dynamic,
        originelePrijs: data['OriginelePrijs'] as dynamic,
        veilingText: data['VeilingText'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'GeenExtraKosten': geenExtraKosten,
        'HuurAbbreviation': huurAbbreviation,
        'Huurprijs': huurprijs,
        'HuurprijsOpAanvraag': huurprijsOpAanvraag,
        'HuurprijsTot': huurprijsTot,
        'KoopAbbreviation': koopAbbreviation,
        'Koopprijs': koopprijs,
        'KoopprijsOpAanvraag': koopprijsOpAanvraag,
        'KoopprijsTot': koopprijsTot,
        'OriginelePrijs': originelePrijs,
        'VeilingText': veilingText,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Prijs].
  factory Prijs.fromJson(String data) {
    return Prijs.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Prijs] to a JSON string.
  String toJson() => json.encode(toMap());
}
