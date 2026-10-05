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
import 'package:bloom_server/src/generated/protocol.dart' as _iu7cvd6e;
import 'package:serverpod/serverpod.dart' as _is;

/// A YouTube video discovered from a curated channel.
abstract class Video implements _is.TableRow<int?>, _is.ProtocolSerialization {
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
      publishedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['publishedAt'],
      ),
      topics: _iu7cvd6e.Protocol().deserialize<List<String>>(
        jsonSerialization['topics'],
      ),
      isShort: _is.BoolJsonExtension.fromJson(jsonSerialization['isShort']),
      isEmbeddable: _is.BoolJsonExtension.fromJson(
        jsonSerialization['isEmbeddable'],
      ),
      fetchedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['fetchedAt'],
      ),
    );
  }

  static final t = VideoTable();

  static const db = VideoRepository._();

  @override
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

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [Video]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
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

  static VideoInclude include() {
    return VideoInclude._();
  }

  static VideoIncludeList includeList({
    _is.WhereExpressionBuilder<VideoTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<VideoTable>? orderBy,
    _is.OrderByListBuilder<VideoTable>? orderByList,
    VideoInclude? include,
  }) {
    return VideoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Video.t),
      orderByList: orderByList?.call(Video.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
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
  @_is.useResult
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

class VideoUpdateTable extends _is.UpdateTable<VideoTable> {
  VideoUpdateTable(super.table);

  _is.ColumnValue<String, String> youtubeVideoId(String value) =>
      _is.ColumnValue(
        table.youtubeVideoId,
        value,
      );

  _is.ColumnValue<int, int> channelId(int value) => _is.ColumnValue(
    table.channelId,
    value,
  );

  _is.ColumnValue<String, String> title(String value) => _is.ColumnValue(
    table.title,
    value,
  );

  _is.ColumnValue<String, String> thumbnailUrl(String? value) =>
      _is.ColumnValue(
        table.thumbnailUrl,
        value,
      );

  _is.ColumnValue<int, int> durationSeconds(int value) => _is.ColumnValue(
    table.durationSeconds,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> publishedAt(DateTime value) =>
      _is.ColumnValue(
        table.publishedAt,
        value,
      );

  _is.ColumnValue<List<String>, List<String>> topics(List<String> value) =>
      _is.ColumnValue(
        table.topics,
        value,
      );

  _is.ColumnValue<bool, bool> isShort(bool value) => _is.ColumnValue(
    table.isShort,
    value,
  );

  _is.ColumnValue<bool, bool> isEmbeddable(bool value) => _is.ColumnValue(
    table.isEmbeddable,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> fetchedAt(DateTime value) =>
      _is.ColumnValue(
        table.fetchedAt,
        value,
      );
}

class VideoTable extends _is.Table<int?> {
  VideoTable({super.tableRelation}) : super(tableName: 'video') {
    updateTable = VideoUpdateTable(this);
    youtubeVideoId = _is.ColumnString(
      'youtubeVideoId',
      this,
    );
    channelId = _is.ColumnInt(
      'channelId',
      this,
    );
    title = _is.ColumnString(
      'title',
      this,
    );
    thumbnailUrl = _is.ColumnString(
      'thumbnailUrl',
      this,
    );
    durationSeconds = _is.ColumnInt(
      'durationSeconds',
      this,
    );
    publishedAt = _is.ColumnDateTime(
      'publishedAt',
      this,
    );
    topics = _is.ColumnSerializable<List<String>>(
      'topics',
      this,
    );
    isShort = _is.ColumnBool(
      'isShort',
      this,
    );
    isEmbeddable = _is.ColumnBool(
      'isEmbeddable',
      this,
    );
    fetchedAt = _is.ColumnDateTime(
      'fetchedAt',
      this,
    );
  }

  late final VideoUpdateTable updateTable;

  /// YouTube's own video ID.
  late final _is.ColumnString youtubeVideoId;

  /// The id of the Channel row this video belongs to.
  late final _is.ColumnInt channelId;

  late final _is.ColumnString title;

  late final _is.ColumnString thumbnailUrl;

  late final _is.ColumnInt durationSeconds;

  late final _is.ColumnDateTime publishedAt;

  /// Topics inherited from the channel.
  late final _is.ColumnSerializable<List<String>> topics;

  /// Estimated from duration (Shorts detection needs verification).
  late final _is.ColumnBool isShort;

  late final _is.ColumnBool isEmbeddable;

  late final _is.ColumnDateTime fetchedAt;

  @override
  List<_is.Column> get columns => [
    id,
    youtubeVideoId,
    channelId,
    title,
    thumbnailUrl,
    durationSeconds,
    publishedAt,
    topics,
    isShort,
    isEmbeddable,
    fetchedAt,
  ];
}

class VideoInclude extends _is.IncludeObject {
  VideoInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => Video.t;
}

class VideoIncludeList extends _is.IncludeList {
  VideoIncludeList._({
    _is.WhereExpressionBuilder<VideoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Video.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => Video.t;
}

class VideoRepository {
  const VideoRepository._();

  /// Returns a list of [Video]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Video>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<VideoTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<VideoTable>? orderBy,
    _is.OrderByListBuilder<VideoTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Video>(
      where: where?.call(Video.t),
      orderBy: orderBy?.call(Video.t),
      orderByList: orderByList?.call(Video.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Video] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Video?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<VideoTable>? where,
    int? offset,
    _is.OrderByBuilder<VideoTable>? orderBy,
    _is.OrderByListBuilder<VideoTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Video>(
      where: where?.call(Video.t),
      orderBy: orderBy?.call(Video.t),
      orderByList: orderByList?.call(Video.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Video] by its [id] or null if no such row exists.
  Future<Video?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Video>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Video]s in the list and returns the inserted rows.
  ///
  /// The returned [Video]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Video>> insert(
    _is.DatabaseSession session,
    List<Video> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Video>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Video] and returns the inserted row.
  ///
  /// The returned [Video] will have its `id` field set.
  Future<Video> insertRow(
    _is.DatabaseSession session,
    Video row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Video>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [Video]s in the list and returns the resulting rows.
  ///
  /// If a row conflicts on the given [conflictColumns], the existing row is
  /// updated with the new values. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies to rows matching the
  /// given expression. Conflicting rows that don't match are skipped and not
  /// returned, so the resulting list may be shorter than [rows].
  ///
  /// The returned [Video]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Video>> upsert(
    _is.DatabaseSession session,
    List<Video> rows, {
    required _is.ColumnSelections<VideoTable> conflictColumns,
    _is.ColumnSelections<VideoTable>? updateColumns,
    _is.WhereExpressionBuilder<VideoTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Video>(
      rows,
      conflictColumns: conflictColumns(Video.t),
      updateColumns: updateColumns?.call(Video.t),
      updateWhere: updateWhere?.call(Video.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Video] and returns the resulting row.
  ///
  /// If the row conflicts on the given [conflictColumns], the existing row is
  /// updated. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies when the existing
  /// row matches the expression. Returns `null` if no row was affected — for
  /// example when [updateWhere] does not match the conflicting row.
  ///
  /// The returned [Video] will have its `id` field set.
  Future<Video?> upsertRow(
    _is.DatabaseSession session,
    Video row, {
    required _is.ColumnSelections<VideoTable> conflictColumns,
    _is.ColumnSelections<VideoTable>? updateColumns,
    _is.WhereExpressionBuilder<VideoTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Video>(
      row,
      conflictColumns: conflictColumns(Video.t),
      updateColumns: updateColumns?.call(Video.t),
      updateWhere: updateWhere?.call(Video.t),
      transaction: transaction,
    );
  }

  /// Updates all [Video]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Video>> update(
    _is.DatabaseSession session,
    List<Video> rows, {
    _is.ColumnSelections<VideoTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Video>(
      rows,
      columns: columns?.call(Video.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Video]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Video> updateRow(
    _is.DatabaseSession session,
    Video row, {
    _is.ColumnSelections<VideoTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Video>(
      row,
      columns: columns?.call(Video.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Video] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Video?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<VideoUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Video>(
      id,
      columnValues: columnValues(Video.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Video]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Video>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<VideoUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<VideoTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<VideoTable>? orderBy,
    _is.OrderByListBuilder<VideoTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Video>(
      columnValues: columnValues(Video.t.updateTable),
      where: where(Video.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Video.t),
      orderByList: orderByList?.call(Video.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Video]s in the list and returns the deleted rows.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Video>> delete(
    _is.DatabaseSession session,
    List<Video> rows, {
    _is.OrderByBuilder<VideoTable>? orderBy,
    _is.OrderByListBuilder<VideoTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Video>(
      rows,
      orderBy: orderBy?.call(Video.t),
      orderByList: orderByList?.call(Video.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Video].
  Future<Video> deleteRow(
    _is.DatabaseSession session,
    Video row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Video>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Video>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<VideoTable> where,
    _is.OrderByBuilder<VideoTable>? orderBy,
    _is.OrderByListBuilder<VideoTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Video>(
      where: where(Video.t),
      orderBy: orderBy?.call(Video.t),
      orderByList: orderByList?.call(Video.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<VideoTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Video>(
      where: where?.call(Video.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Video] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<VideoTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Video>(
      where: where(Video.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
