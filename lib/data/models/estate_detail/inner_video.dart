import 'dart:convert';


import 'cdn.dart';
import 'estate_stream.dart';

class InnerVideo {
  int? birthRate;
  List<Cdn>? cdns;
  bool? hasAudio;
  bool? hasVideo;
  EstateStream? stream;
  String? url;
  InnerVideo({
    this.birthRate,
    this.cdns,
    this.hasAudio,
    this.hasVideo,
    this.stream,
    this.url,
  });
  

  InnerVideo copyWith({
    int? birthRate,
    List<Cdn>? cdns,
    bool? hasAudio,
    bool? hasVideo,
    EstateStream? stream,
    String? url,
  }) {
    return InnerVideo(
      birthRate: birthRate ?? this.birthRate,
      cdns: cdns ?? this.cdns,
      hasAudio: hasAudio ?? this.hasAudio,
      hasVideo: hasVideo ?? this.hasVideo,
      stream: stream ?? this.stream,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'BitRate': birthRate,
      'Cdns': cdns?.map((x) => x.toMap()).toList(),
      'HasAudio': hasAudio,
      'HasVideo': hasVideo,
      'Stream': stream?.toMap(),
      'Url': url,
    };
  }

  factory InnerVideo.fromMap(Map<String, dynamic> map) {
    return InnerVideo(
      birthRate: map['BitRate']?.toInt(),
      cdns: map['Cdns'] != null ? List<Cdn>.from(map['Cdns']?.map((x) => Cdn.fromMap(x))) : null,
      hasAudio: map['HasAudio'],
      hasVideo: map['HasVideo'],
      stream: map['Stream'] != null ? EstateStream.fromMap(map['Stream']) : null,
      url: map['Url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InnerVideo.fromJson(String source) => InnerVideo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InnerVideo(birthRate: $birthRate, cdns: $cdns, hasAudio: $hasAudio, hasVideo: $hasVideo, stream: $stream, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is InnerVideo &&
      other.birthRate == birthRate &&
      other.hasAudio == hasAudio &&
      other.hasVideo == hasVideo &&
      other.stream == stream &&
      other.url == url;
  }

  @override
  int get hashCode {
    return birthRate.hashCode ^
      cdns.hashCode ^
      hasAudio.hashCode ^
      hasVideo.hashCode ^
      stream.hashCode ^
      url.hashCode;
  }
}
