import 'dart:convert';

class MediaItem {
  int? category;
  int? height;
  String? url;
  String? urlSecure;
  int? width;

  MediaItem({
    this.category,
    this.height,
    this.url,
    this.urlSecure,
    this.width,
  });

  factory MediaItem.fromMap(Map<String, dynamic> data) => MediaItem(
        category: data['Category'] as int?,
        height: data['Height'] as int?,
        url: data['Url'] as String?,
        urlSecure: data['UrlSecure'] as String?,
        width: data['Width'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'Category': category,
        'Height': height,
        'Url': url,
        'UrlSecure': urlSecure,
        'Width': width,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MediaItem].
  factory MediaItem.fromJson(String data) {
    return MediaItem.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MediaItem] to a JSON string.
  String toJson() => json.encode(toMap());
}
