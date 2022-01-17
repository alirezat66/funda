import 'dart:convert';

class EstateStream {
  int? averageBitRate;
  int? height;
  int? width;

  EstateStream({this.averageBitRate, this.height, this.width});

  factory EstateStream.fromMap(Map<String, dynamic> data) => EstateStream(
        averageBitRate: data['AverageBitRate'] as int?,
        height: data['Height'] as int?,
        width: data['Width'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'AverageBitRate': averageBitRate,
        'Height': height,
        'Width': width,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [EstateStream].
  factory EstateStream.fromJson(String data) {
    return EstateStream.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [EstateStream] to a JSON string.
  String toJson() => json.encode(toMap());
}
