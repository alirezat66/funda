import 'dart:convert';

import 'package:funda_assignment/configuration/utility.dart';

class Price {
  dynamic geenExtraKosten;
  //huurAbbreviation
  String? rentAbbreviation;
  //huurprijs
  int? rentalPrice;
  String? huurprijsOpAanvraag;
  dynamic huurprijsTot;
  //koopAbbreviation
  String? sellAbbreviation;
  //koopprijs
  int? sellPrice;
  String get showingPrice{
    if(sellPrice == null){
      // it is rental place
      return '\u{20B9} ${Utility.moneyFormat(rentalPrice!)} $rentAbbreviation';
    }else{
      // it is sell object
      return '\u{20B9} ${Utility.moneyFormat(sellPrice!)} $sellAbbreviation';
    }
    
  }
  String? koopprijsOpAanvraag;
  dynamic koopprijsTot;
  dynamic originelePrijs;
  String? veilingText;

  Price({
    this.geenExtraKosten,
    this.rentAbbreviation,
    this.rentalPrice,
    this.huurprijsOpAanvraag,
    this.huurprijsTot,
    this.sellAbbreviation,
    this.sellPrice,
    this.koopprijsOpAanvraag,
    this.koopprijsTot,
    this.originelePrijs,
    this.veilingText,
  });

  factory Price.fromMap(Map<String, dynamic> data) => Price(
        geenExtraKosten: data['GeenExtraKosten'] as dynamic,
        rentAbbreviation: data['HuurAbbreviation'] as String?,
        rentalPrice: data['Huurprijs'] as int?,
        huurprijsOpAanvraag: data['HuurprijsOpAanvraag'] as String?,
        huurprijsTot: data['HuurprijsTot'] as dynamic,
        sellAbbreviation: data['KoopAbbreviation'] as String?,
        sellPrice: data['Koopprijs'] as int?,
        koopprijsOpAanvraag: data['KoopprijsOpAanvraag'] as String?,
        koopprijsTot: data['KoopprijsTot'] as dynamic,
        originelePrijs: data['OriginelePrijs'] as dynamic,
        veilingText: data['VeilingText'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'GeenExtraKosten': geenExtraKosten,
        'HuurAbbreviation': rentAbbreviation,
        'Huurprijs': rentalPrice,
        'HuurprijsOpAanvraag': huurprijsOpAanvraag,
        'HuurprijsTot': huurprijsTot,
        'KoopAbbreviation': sellAbbreviation,
        'Koopprijs': sellPrice,
        'KoopprijsOpAanvraag': koopprijsOpAanvraag,
        'KoopprijsTot': koopprijsTot,
        'OriginelePrijs': originelePrijs,
        'VeilingText': veilingText,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Price].
  factory Price.fromJson(String data) {
    return Price.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Price] to a JSON string.
  String toJson() => json.encode(toMap());
}
