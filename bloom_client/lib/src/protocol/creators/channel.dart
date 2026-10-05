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

/// A YouTube creator curated by the Bloom team.
abstract class Channel
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Channel._({
    this.id,
    required this.youtubeChannelId,
    this.handle,
    required this.name,
    required this.topics,
    this.language,
    this.addedBy,
    this.uploadsPlaylistId,
    required this.isActive,
    this.lastFetchedAt,
  });

  factory Channel({
    int? id,
    required String youtubeChannelId,
    String? handle,
    required String name,
    required List<String> topics,
    String? language,
    String? addedBy,
    String? uploadsPlaylistId,
    required bool isActive,
    DateTime? lastFetchedAt,
  }) = _ChannelImpl;

  factory Channel.fromJson(Map<String, dynamic> jsonSerialization) {
    return Channel(
      id: jsonSerialization['id'] as int?,
      youtubeChannelId: jsonSerialization['youtubeChannelId'] as String,
      handle: jsonSerialization['handle'] as String?,
      name: jsonSerialization['name'] as String,
      topics: _ikoclrg2.Protocol().deserialize<List<String>>(
        jsonSerialization['topics'],
      ),
      language: jsonSerialization['language'] as String?,
      addedBy: jsonSerialization['addedBy'] as String?,
      uploadsPlaylistId: jsonSerialization['uploadsPlaylistId'] as String?,
      isActive: _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      lastFetchedAt: jsonSerialization['lastFetchedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastFetchedAt'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// YouTube's own channel ID (starts with UC...).
  String youtubeChannelId;

  /// The channel handle, for example @rajshamani.
  String? handle;

  String name;

  /// Bloom topics, for example [Science, Coding].
  List<String> topics;

  String? language;

  /// Who in the team added this creator.
  String? addedBy;

  /// YouTube playlist that lists the channel's uploads.
  String? uploadsPlaylistId;

  bool isActive;

  DateTime? lastFetchedAt;

  /// Returns a shallow copy of this [Channel]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Channel copyWith({
    int? id,
    String? youtubeChannelId,
    String? handle,
    String? name,
    List<String>? topics,
    String? language,
    String? addedBy,
    String? uploadsPlaylistId,
    bool? isActive,
    DateTime? lastFetchedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Channel',
      if (id != null) 'id': id,
      'youtubeChannelId': youtubeChannelId,
      if (handle != null) 'handle': handle,
      'name': name,
      'topics': topics.toJson(),
      if (language != null) 'language': language,
      if (addedBy != null) 'addedBy': addedBy,
      if (uploadsPlaylistId != null) 'uploadsPlaylistId': uploadsPlaylistId,
      'isActive': isActive,
      if (lastFetchedAt != null) 'lastFetchedAt': lastFetchedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Channel',
      if (id != null) 'id': id,
      'youtubeChannelId': youtubeChannelId,
      if (handle != null) 'handle': handle,
      'name': name,
      'topics': topics.toJson(),
      if (language != null) 'language': language,
      if (addedBy != null) 'addedBy': addedBy,
      if (uploadsPlaylistId != null) 'uploadsPlaylistId': uploadsPlaylistId,
      'isActive': isActive,
      if (lastFetchedAt != null) 'lastFetchedAt': lastFetchedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChannelImpl extends Channel {
  _ChannelImpl({
    int? id,
    required String youtubeChannelId,
    String? handle,
    required String name,
    required List<String> topics,
    String? language,
    String? addedBy,
    String? uploadsPlaylistId,
    required bool isActive,
    DateTime? lastFetchedAt,
  }) : super._(
         id: id,
         youtubeChannelId: youtubeChannelId,
         handle: handle,
         name: name,
         topics: topics,
         language: language,
         addedBy: addedBy,
         uploadsPlaylistId: uploadsPlaylistId,
         isActive: isActive,
         lastFetchedAt: lastFetchedAt,
       );

  /// Returns a shallow copy of this [Channel]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Channel copyWith({
    Object? id = _Undefined,
    String? youtubeChannelId,
    Object? handle = _Undefined,
    String? name,
    List<String>? topics,
    Object? language = _Undefined,
    Object? addedBy = _Undefined,
    Object? uploadsPlaylistId = _Undefined,
    bool? isActive,
    Object? lastFetchedAt = _Undefined,
  }) {
    return Channel(
      id: id is int? ? id : this.id,
      youtubeChannelId: youtubeChannelId ?? this.youtubeChannelId,
      handle: handle is String? ? handle : this.handle,
      name: name ?? this.name,
      topics: topics ?? this.topics.map((e0) => e0).toList(),
      language: language is String? ? language : this.language,
      addedBy: addedBy is String? ? addedBy : this.addedBy,
      uploadsPlaylistId: uploadsPlaylistId is String?
          ? uploadsPlaylistId
          : this.uploadsPlaylistId,
      isActive: isActive ?? this.isActive,
      lastFetchedAt: lastFetchedAt is DateTime?
          ? lastFetchedAt
          : this.lastFetchedAt,
    );
  }
}
