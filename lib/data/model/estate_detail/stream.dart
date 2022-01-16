import 'dart:convert';

class Stream {
  int? averageBitRate;
  int? height;
  int? width;

  Stream({this.averageBitRate, this.height, this.width});

  factory Stream.fromMap(Map<String, dynamic> data) => Stream(
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
  /// Parses the string and returns the resulting Json object as [Stream].
  factory Stream.fromJson(String data) {
    return Stream.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Stream] to a JSON string.
  String toJson() => json.encode(toMap());
}
