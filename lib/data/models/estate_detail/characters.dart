import 'dart:convert';

import 'inner_feature.dart';

class Feature {
  dynamic ad;
  List<InnerFeature>? innerFeatures;
  int? lokNummer;
  Feature? subFeature;
  String? titel;

  Feature({
    this.ad,
    this.innerFeatures,
    this.lokNummer,
    this.subFeature,
    this.titel,
  });

  factory Feature.fromMap(Map<String, dynamic> data) => Feature(
        ad: data['Ad'] as dynamic,
        innerFeatures: (data['Kenmerken'] as List<dynamic>?)
            ?.map((e) => InnerFeature.fromMap(e as Map<String, dynamic>))
            .toList(),
        lokNummer: data['LokNummer'] as int?,
        subFeature: data['SubKenmerk'] == null
            ? null
            : Feature.fromMap(data['SubKenmerk']!),
        titel: data['Titel'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Ad': ad,
        'Kenmerken': innerFeatures?.map((e) => e.toMap()).toList(),
        'LokNummer': lokNummer,
        'SubKenmerk': subFeature,
        'Titel': titel,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Feature].
  factory Feature.fromJson(String data) {
    return Feature.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Feature] to a JSON string.
  String toJson() => json.encode(toMap());
}
