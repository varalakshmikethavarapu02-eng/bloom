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

/// A YouTube creator curated by the Bloom team.
abstract class Channel
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
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
      topics: _iu7cvd6e.Protocol().deserialize<List<String>>(
        jsonSerialization['topics'],
      ),
      language: jsonSerialization['language'] as String?,
      addedBy: jsonSerialization['addedBy'] as String?,
      uploadsPlaylistId: jsonSerialization['uploadsPlaylistId'] as String?,
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      lastFetchedAt: jsonSerialization['lastFetchedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastFetchedAt'],
            ),
    );
  }

  static final t = ChannelTable();

  static const db = ChannelRepository._();

  @override
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

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [Channel]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
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

  static ChannelInclude include() {
    return ChannelInclude._();
  }

  static ChannelIncludeList includeList({
    _is.WhereExpressionBuilder<ChannelTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ChannelTable>? orderBy,
    _is.OrderByListBuilder<ChannelTable>? orderByList,
    ChannelInclude? include,
  }) {
    return ChannelIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Channel.t),
      orderByList: orderByList?.call(Channel.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
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
  @_is.useResult
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

class ChannelUpdateTable extends _is.UpdateTable<ChannelTable> {
  ChannelUpdateTable(super.table);

  _is.ColumnValue<String, String> youtubeChannelId(String value) =>
      _is.ColumnValue(
        table.youtubeChannelId,
        value,
      );

  _is.ColumnValue<String, String> handle(String? value) => _is.ColumnValue(
    table.handle,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<List<String>, List<String>> topics(List<String> value) =>
      _is.ColumnValue(
        table.topics,
        value,
      );

  _is.ColumnValue<String, String> language(String? value) => _is.ColumnValue(
    table.language,
    value,
  );

  _is.ColumnValue<String, String> addedBy(String? value) => _is.ColumnValue(
    table.addedBy,
    value,
  );

  _is.ColumnValue<String, String> uploadsPlaylistId(String? value) =>
      _is.ColumnValue(
        table.uploadsPlaylistId,
        value,
      );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> lastFetchedAt(DateTime? value) =>
      _is.ColumnValue(
        table.lastFetchedAt,
        value,
      );
}

class ChannelTable extends _is.Table<int?> {
  ChannelTable({super.tableRelation}) : super(tableName: 'channel') {
    updateTable = ChannelUpdateTable(this);
    youtubeChannelId = _is.ColumnString(
      'youtubeChannelId',
      this,
    );
    handle = _is.ColumnString(
      'handle',
      this,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    topics = _is.ColumnSerializable<List<String>>(
      'topics',
      this,
    );
    language = _is.ColumnString(
      'language',
      this,
    );
    addedBy = _is.ColumnString(
      'addedBy',
      this,
    );
    uploadsPlaylistId = _is.ColumnString(
      'uploadsPlaylistId',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
    lastFetchedAt = _is.ColumnDateTime(
      'lastFetchedAt',
      this,
    );
  }

  late final ChannelUpdateTable updateTable;

  /// YouTube's own channel ID (starts with UC...).
  late final _is.ColumnString youtubeChannelId;

  /// The channel handle, for example @rajshamani.
  late final _is.ColumnString handle;

  late final _is.ColumnString name;

  /// Bloom topics, for example [Science, Coding].
  late final _is.ColumnSerializable<List<String>> topics;

  late final _is.ColumnString language;

  /// Who in the team added this creator.
  late final _is.ColumnString addedBy;

  /// YouTube playlist that lists the channel's uploads.
  late final _is.ColumnString uploadsPlaylistId;

  late final _is.ColumnBool isActive;

  late final _is.ColumnDateTime lastFetchedAt;

  @override
  List<_is.Column> get columns => [
    id,
    youtubeChannelId,
    handle,
    name,
    topics,
    language,
    addedBy,
    uploadsPlaylistId,
    isActive,
    lastFetchedAt,
  ];
}

class ChannelInclude extends _is.IncludeObject {
  ChannelInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => Channel.t;
}

class ChannelIncludeList extends _is.IncludeList {
  ChannelIncludeList._({
    _is.WhereExpressionBuilder<ChannelTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Channel.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => Channel.t;
}

class ChannelRepository {
  const ChannelRepository._();

  /// Returns a list of [Channel]s matching the given query parameters.
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
  Future<List<Channel>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ChannelTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ChannelTable>? orderBy,
    _is.OrderByListBuilder<ChannelTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Channel>(
      where: where?.call(Channel.t),
      orderBy: orderBy?.call(Channel.t),
      orderByList: orderByList?.call(Channel.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Channel] matching the given query parameters.
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
  Future<Channel?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ChannelTable>? where,
    int? offset,
    _is.OrderByBuilder<ChannelTable>? orderBy,
    _is.OrderByListBuilder<ChannelTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Channel>(
      where: where?.call(Channel.t),
      orderBy: orderBy?.call(Channel.t),
      orderByList: orderByList?.call(Channel.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Channel] by its [id] or null if no such row exists.
  Future<Channel?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Channel>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Channel]s in the list and returns the inserted rows.
  ///
  /// The returned [Channel]s will have their `id` fields set.
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
  Future<List<Channel>> insert(
    _is.DatabaseSession session,
    List<Channel> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Channel>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Channel] and returns the inserted row.
  ///
  /// The returned [Channel] will have its `id` field set.
  Future<Channel> insertRow(
    _is.DatabaseSession session,
    Channel row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Channel>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [Channel]s in the list and returns the resulting rows.
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
  /// The returned [Channel]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Channel>> upsert(
    _is.DatabaseSession session,
    List<Channel> rows, {
    required _is.ColumnSelections<ChannelTable> conflictColumns,
    _is.ColumnSelections<ChannelTable>? updateColumns,
    _is.WhereExpressionBuilder<ChannelTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Channel>(
      rows,
      conflictColumns: conflictColumns(Channel.t),
      updateColumns: updateColumns?.call(Channel.t),
      updateWhere: updateWhere?.call(Channel.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Channel] and returns the resulting row.
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
  /// The returned [Channel] will have its `id` field set.
  Future<Channel?> upsertRow(
    _is.DatabaseSession session,
    Channel row, {
    required _is.ColumnSelections<ChannelTable> conflictColumns,
    _is.ColumnSelections<ChannelTable>? updateColumns,
    _is.WhereExpressionBuilder<ChannelTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Channel>(
      row,
      conflictColumns: conflictColumns(Channel.t),
      updateColumns: updateColumns?.call(Channel.t),
      updateWhere: updateWhere?.call(Channel.t),
      transaction: transaction,
    );
  }

  /// Updates all [Channel]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Channel>> update(
    _is.DatabaseSession session,
    List<Channel> rows, {
    _is.ColumnSelections<ChannelTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Channel>(
      rows,
      columns: columns?.call(Channel.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Channel]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Channel> updateRow(
    _is.DatabaseSession session,
    Channel row, {
    _is.ColumnSelections<ChannelTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Channel>(
      row,
      columns: columns?.call(Channel.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Channel] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Channel?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<ChannelUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Channel>(
      id,
      columnValues: columnValues(Channel.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Channel]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Channel>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ChannelUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ChannelTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ChannelTable>? orderBy,
    _is.OrderByListBuilder<ChannelTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Channel>(
      columnValues: columnValues(Channel.t.updateTable),
      where: where(Channel.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Channel.t),
      orderByList: orderByList?.call(Channel.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Channel]s in the list and returns the deleted rows.
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
  Future<List<Channel>> delete(
    _is.DatabaseSession session,
    List<Channel> rows, {
    _is.OrderByBuilder<ChannelTable>? orderBy,
    _is.OrderByListBuilder<ChannelTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Channel>(
      rows,
      orderBy: orderBy?.call(Channel.t),
      orderByList: orderByList?.call(Channel.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Channel].
  Future<Channel> deleteRow(
    _is.DatabaseSession session,
    Channel row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Channel>(
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
  Future<List<Channel>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ChannelTable> where,
    _is.OrderByBuilder<ChannelTable>? orderBy,
    _is.OrderByListBuilder<ChannelTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Channel>(
      where: where(Channel.t),
      orderBy: orderBy?.call(Channel.t),
      orderByList: orderByList?.call(Channel.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ChannelTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Channel>(
      where: where?.call(Channel.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Channel] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ChannelTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Channel>(
      where: where(Channel.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
