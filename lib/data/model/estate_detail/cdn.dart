import 'dart:convert';

class Cdn {
  String? deliveryType;
  dynamic fileType;
  String? mimeType;
  dynamic sslUrl;
  String? url;

  Cdn({
    this.deliveryType,
    this.fileType,
    this.mimeType,
    this.sslUrl,
    this.url,
  });

  factory Cdn.fromMap(Map<String, dynamic> data) => Cdn(
        deliveryType: data['DeliveryType'] as String?,
        fileType: data['FileType'] as dynamic,
        mimeType: data['MimeType'] as String?,
        sslUrl: data['SslUrl'] as dynamic,
        url: data['Url'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'DeliveryType': deliveryType,
        'FileType': fileType,
        'MimeType': mimeType,
        'SslUrl': sslUrl,
        'Url': url,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Cdn].
  factory Cdn.fromJson(String data) {
    return Cdn.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Cdn] to a JSON string.
  String toJson() => json.encode(toMap());
}
