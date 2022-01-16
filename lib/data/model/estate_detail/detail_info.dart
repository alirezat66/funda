import 'dart:convert';

class DetailInfo {
  bool? hasPromotionLabel;
  int? promotionLabelType;
  int? ribbonColor;
  dynamic ribbonText;
  String? tagline;

  DetailInfo({
    this.hasPromotionLabel,
    this.promotionLabelType,
    this.ribbonColor,
    this.ribbonText,
    this.tagline,
  });

  factory DetailInfo.fromMap(Map<String, dynamic> data) => DetailInfo(
        hasPromotionLabel: data['HasPromotionLabel'] as bool?,
        promotionLabelType: data['PromotionLabelType'] as int?,
        ribbonColor: data['RibbonColor'] as int?,
        ribbonText: data['RibbonText'] as dynamic,
        tagline: data['Tagline'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'HasPromotionLabel': hasPromotionLabel,
        'PromotionLabelType': promotionLabelType,
        'RibbonColor': ribbonColor,
        'RibbonText': ribbonText,
        'Tagline': tagline,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DetailInfo].
  factory DetailInfo.fromJson(String data) {
    return DetailInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DetailInfo] to a JSON string.
  String toJson() => json.encode(toMap());
}
