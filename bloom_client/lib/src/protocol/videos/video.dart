/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bloom_client/src/protocol/protocol.dart' as _ikoclrg2;
import 'package:serverpod_client/serverpod_client.dart' as _isc;

/// A YouTube video discovered from a curated channel.
abstract class Video
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Video._({
    this.id,
    required this.youtubeVideoId,
    required this.channelId,
    required this.title,
    this.thumbnailUrl,
    required this.durationSeconds,
    required this.publishedAt,
    required this.topics,
    required this.isShort,
    required this.isEmbeddable,
    required this.fetchedAt,
  });

  factory Video({
    int? id,
    required String youtubeVideoId,
    required int channelId,
    required String title,
    String? thumbnailUrl,
    required int durationSeconds,
    required DateTime publishedAt,
    required List<String> topics,
    required bool isShort,
    required bool isEmbeddable,
    required DateTime fetchedAt,
  }) = _VideoImpl;

  factory Video.fromJson(Map<String, dynamic> jsonSerialization) {
    return Video(
      id: jsonSerialization['id'] as int?,
      youtubeVideoId: jsonSerialization['youtubeVideoId'] as String,
      channelId: jsonSerialization['channelId'] as int,
      title: jsonSerialization['title'] as String,
      thumbnailUrl: jsonSerialization['thumbnailUrl'] as String?,
      durationSeconds: jsonSerialization['durationSeconds'] as int,
      publishedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['publishedAt'],
      ),
      topics: _ikoclrg2.Protocol().deserialize<List<String>>(
        jsonSerialization['topics'],
      ),
      isShort: _isc.BoolJsonExtension.fromJson(jsonSerialization['isShort']),
      isEmbeddable: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['isEmbeddable'],
      ),
      fetchedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['fetchedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// YouTube's own video ID.
  String youtubeVideoId;

  /// The id of the Channel row this video belongs to.
  int channelId;

  String title;

  String? thumbnailUrl;

  int durationSeconds;

  DateTime publishedAt;

  /// Topics inherited from the channel.
  List<String> topics;

  /// Estimated from duration (Shorts detection needs verification).
  bool isShort;

  bool isEmbeddable;

  DateTime fetchedAt;

  /// Returns a shallow copy of this [Video]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Video copyWith({
    int? id,
    String? youtubeVideoId,
    int? channelId,
    String? title,
    String? thumbnailUrl,
    int? durationSeconds,
    DateTime? publishedAt,
    List<String>? topics,
    bool? isShort,
    bool? isEmbeddable,
    DateTime? fetchedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Video',
      if (id != null) 'id': id,
      'youtubeVideoId': youtubeVideoId,
      'channelId': channelId,
      'title': title,
      if (thumbnailUrl != null) 'thumbnailUrl': thumbnailUrl,
      'durationSeconds': durationSeconds,
      'publishedAt': publishedAt.toJson(),
      'topics': topics.toJson(),
      'isShort': isShort,
      'isEmbeddable': isEmbeddable,
      'fetchedAt': fetchedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Video',
      if (id != null) 'id': id,
      'youtubeVideoId': youtubeVideoId,
      'channelId': channelId,
      'title': title,
      if (thumbnailUrl != null) 'thumbnailUrl': thumbnailUrl,
      'durationSeconds': durationSeconds,
      'publishedAt': publishedAt.toJson(),
      'topics': topics.toJson(),
      'isShort': isShort,
      'isEmbeddable': isEmbeddable,
      'fetchedAt': fetchedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _VideoImpl extends Video {
  _VideoImpl({
    int? id,
    required String youtubeVideoId,
    required int channelId,
    required String title,
    String? thumbnailUrl,
    required int durationSeconds,
    required DateTime publishedAt,
    required List<String> topics,
    required bool isShort,
    required bool isEmbeddable,
    required DateTime fetchedAt,
  }) : super._(
         id: id,
         youtubeVideoId: youtubeVideoId,
         channelId: channelId,
         title: title,
         thumbnailUrl: thumbnailUrl,
         durationSeconds: durationSeconds,
         publishedAt: publishedAt,
         topics: topics,
         isShort: isShort,
         isEmbeddable: isEmbeddable,
         fetchedAt: fetchedAt,
       );

  /// Returns a shallow copy of this [Video]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Video copyWith({
    Object? id = _Undefined,
    String? youtubeVideoId,
    int? channelId,
    String? title,
    Object? thumbnailUrl = _Undefined,
    int? durationSeconds,
    DateTime? publishedAt,
    List<String>? topics,
    bool? isShort,
    bool? isEmbeddable,
    DateTime? fetchedAt,
  }) {
    return Video(
      id: id is int? ? id : this.id,
      youtubeVideoId: youtubeVideoId ?? this.youtubeVideoId,
      channelId: channelId ?? this.channelId,
      title: title ?? this.title,
      thumbnailUrl: thumbnailUrl is String? ? thumbnailUrl : this.thumbnailUrl,
      durationSeconds: durationSeconds ?? this.durationSeconds,
      publishedAt: publishedAt ?? this.publishedAt,
      topics: topics ?? this.topics.map((e0) => e0).toList(),
      isShort: isShort ?? this.isShort,
      isEmbeddable: isEmbeddable ?? this.isEmbeddable,
      fetchedAt: fetchedAt ?? this.fetchedAt,
    );
  }
}
