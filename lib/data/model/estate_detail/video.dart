import 'dart:convert';

import 'package:funda_assignment/data/model/estate_detail/inner_video.dart';
class Video {
  String? imageUrl;
  int? quadiaVideoId;
  String? thumbnailUrl;
  List<InnerVideo>? videos;

  Video({
    this.imageUrl,
    this.quadiaVideoId,
    this.thumbnailUrl,
    this.videos,
  });

  factory Video.fromMap(Map<String, dynamic> data) => Video(
        imageUrl: data['ImageUrl'] as String?,
        quadiaVideoId: data['QuadiaVideoId'] as int?,
        thumbnailUrl: data['ThumbnailUrl'] as String?,
        videos: (data['Videos'] as List<dynamic>?)
            ?.map((e) => InnerVideo.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'ImageUrl': imageUrl,
        'QuadiaVideoId': quadiaVideoId,
        'ThumbnailUrl': thumbnailUrl,
        'Videos': videos?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Video].
  factory Video.fromJson(String data) {
    return Video.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Video] to a JSON string.
  String toJson() => json.encode(toMap());
}
