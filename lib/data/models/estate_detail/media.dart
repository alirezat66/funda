import 'dart:convert';

import 'media_item.dart';

class Media {
  int? categorie;
  int? contentType;
  String? id;
  int? indexNumber;
  List<MediaItem>? mediaItems;
  dynamic metadata;
  String? mediaName;
  bool? registratieVerplicht;
  int? soort;

  Media({
    this.categorie,
    this.contentType,
    this.id,
    this.indexNumber,
    this.mediaItems,
    this.metadata,
    this.mediaName,
    this.registratieVerplicht,
    this.soort,
  });

  factory Media.fromMap(Map<String, dynamic> data) => Media(
        categorie: data['Categorie'] as int?,
        contentType: data['ContentType'] as int?,
        id: data['Id'] as String?,
        indexNumber: data['IndexNumber'] as int?,
        mediaItems: (data['MediaItems'] as List<dynamic>?)
            ?.map((e) => MediaItem.fromMap(e as Map<String, dynamic>))
            .toList(),
        metadata: data['Metadata'] as dynamic,
        mediaName: data['Omschrijving'] as dynamic,
        registratieVerplicht: data['RegistratieVerplicht'] as bool?,
        soort: data['Soort'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'Categorie': categorie,
        'ContentType': contentType,
        'Id': id,
        'IndexNumber': indexNumber,
        'MediaItems': mediaItems?.map((e) => e.toMap()).toList(),
        'Metadata': metadata,
        'Omschrijving': mediaName,
        'RegistratieVerplicht': registratieVerplicht,
        'Soort': soort,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Media].
  factory Media.fromJson(String data) {
    return Media.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Media] to a JSON string.
  String toJson() => json.encode(toMap());
}
