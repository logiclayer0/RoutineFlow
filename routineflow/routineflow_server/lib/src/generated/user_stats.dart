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
import 'package:serverpod/serverpod.dart' as _is;

abstract class UserStats
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  UserStats._({
    this.id,
    required this.userId,
    required this.xp,
    required this.level,
    required this.currentStreak,
    required this.longestStreak,
    required this.lastActive,
  });

  factory UserStats({
    int? id,
    required String userId,
    required int xp,
    required int level,
    required int currentStreak,
    required int longestStreak,
    required DateTime lastActive,
  }) = _UserStatsImpl;

  factory UserStats.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserStats(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as String,
      xp: jsonSerialization['xp'] as int,
      level: jsonSerialization['level'] as int,
      currentStreak: jsonSerialization['currentStreak'] as int,
      longestStreak: jsonSerialization['longestStreak'] as int,
      lastActive: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['lastActive'],
      ),
    );
  }

  static final t = UserStatsTable();

  static const db = UserStatsRepository._();

  @override
  int? id;

  String userId;

  int xp;

  int level;

  int currentStreak;

  int longestStreak;

  DateTime lastActive;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [UserStats]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  UserStats copyWith({
    int? id,
    String? userId,
    int? xp,
    int? level,
    int? currentStreak,
    int? longestStreak,
    DateTime? lastActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'UserStats',
      if (id != null) 'id': id,
      'userId': userId,
      'xp': xp,
      'level': level,
      'currentStreak': currentStreak,
      'longestStreak': longestStreak,
      'lastActive': lastActive.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'UserStats',
      if (id != null) 'id': id,
      'userId': userId,
      'xp': xp,
      'level': level,
      'currentStreak': currentStreak,
      'longestStreak': longestStreak,
      'lastActive': lastActive.toJson(),
    };
  }

  static UserStatsInclude include() {
    return UserStatsInclude._();
  }

  static UserStatsIncludeList includeList({
    _is.WhereExpressionBuilder<UserStatsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<UserStatsTable>? orderBy,
    _is.OrderByListBuilder<UserStatsTable>? orderByList,
    UserStatsInclude? include,
  }) {
    return UserStatsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserStats.t),
      orderByList: orderByList?.call(UserStats.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserStatsImpl extends UserStats {
  _UserStatsImpl({
    int? id,
    required String userId,
    required int xp,
    required int level,
    required int currentStreak,
    required int longestStreak,
    required DateTime lastActive,
  }) : super._(
         id: id,
         userId: userId,
         xp: xp,
         level: level,
         currentStreak: currentStreak,
         longestStreak: longestStreak,
         lastActive: lastActive,
       );

  /// Returns a shallow copy of this [UserStats]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  UserStats copyWith({
    Object? id = _Undefined,
    String? userId,
    int? xp,
    int? level,
    int? currentStreak,
    int? longestStreak,
    DateTime? lastActive,
  }) {
    return UserStats(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      xp: xp ?? this.xp,
      level: level ?? this.level,
      currentStreak: currentStreak ?? this.currentStreak,
      longestStreak: longestStreak ?? this.longestStreak,
      lastActive: lastActive ?? this.lastActive,
    );
  }
}

class UserStatsUpdateTable extends _is.UpdateTable<UserStatsTable> {
  UserStatsUpdateTable(super.table);

  _is.ColumnValue<String, String> userId(String value) => _is.ColumnValue(
    table.userId,
    value,
  );

  _is.ColumnValue<int, int> xp(int value) => _is.ColumnValue(
    table.xp,
    value,
  );

  _is.ColumnValue<int, int> level(int value) => _is.ColumnValue(
    table.level,
    value,
  );

  _is.ColumnValue<int, int> currentStreak(int value) => _is.ColumnValue(
    table.currentStreak,
    value,
  );

  _is.ColumnValue<int, int> longestStreak(int value) => _is.ColumnValue(
    table.longestStreak,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> lastActive(DateTime value) =>
      _is.ColumnValue(
        table.lastActive,
        value,
      );
}

class UserStatsTable extends _is.Table<int?> {
  UserStatsTable({super.tableRelation}) : super(tableName: 'user_stats') {
    updateTable = UserStatsUpdateTable(this);
    userId = _is.ColumnString(
      'userId',
      this,
    );
    xp = _is.ColumnInt(
      'xp',
      this,
    );
    level = _is.ColumnInt(
      'level',
      this,
    );
    currentStreak = _is.ColumnInt(
      'currentStreak',
      this,
    );
    longestStreak = _is.ColumnInt(
      'longestStreak',
      this,
    );
    lastActive = _is.ColumnDateTime(
      'lastActive',
      this,
    );
  }

  late final UserStatsUpdateTable updateTable;

  late final _is.ColumnString userId;

  late final _is.ColumnInt xp;

  late final _is.ColumnInt level;

  late final _is.ColumnInt currentStreak;

  late final _is.ColumnInt longestStreak;

  late final _is.ColumnDateTime lastActive;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    xp,
    level,
    currentStreak,
    longestStreak,
    lastActive,
  ];
}

class UserStatsInclude extends _is.IncludeObject {
  UserStatsInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => UserStats.t;
}

class UserStatsIncludeList extends _is.IncludeList {
  UserStatsIncludeList._({
    _is.WhereExpressionBuilder<UserStatsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserStats.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => UserStats.t;
}

class UserStatsRepository {
  const UserStatsRepository._();

  /// Returns a list of [UserStats]s matching the given query parameters.
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
  Future<List<UserStats>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<UserStatsTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<UserStatsTable>? orderBy,
    _is.OrderByListBuilder<UserStatsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<UserStats>(
      where: where?.call(UserStats.t),
      orderBy: orderBy?.call(UserStats.t),
      orderByList: orderByList?.call(UserStats.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [UserStats] matching the given query parameters.
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
  Future<UserStats?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<UserStatsTable>? where,
    int? offset,
    _is.OrderByBuilder<UserStatsTable>? orderBy,
    _is.OrderByListBuilder<UserStatsTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<UserStats>(
      where: where?.call(UserStats.t),
      orderBy: orderBy?.call(UserStats.t),
      orderByList: orderByList?.call(UserStats.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [UserStats] by its [id] or null if no such row exists.
  Future<UserStats?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<UserStats>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [UserStats]s in the list and returns the inserted rows.
  ///
  /// The returned [UserStats]s will have their `id` fields set.
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
  Future<List<UserStats>> insert(
    _is.DatabaseSession session,
    List<UserStats> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<UserStats>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [UserStats] and returns the inserted row.
  ///
  /// The returned [UserStats] will have its `id` field set.
  Future<UserStats> insertRow(
    _is.DatabaseSession session,
    UserStats row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserStats>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [UserStats]s in the list and returns the resulting rows.
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
  /// The returned [UserStats]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserStats>> upsert(
    _is.DatabaseSession session,
    List<UserStats> rows, {
    required _is.ColumnSelections<UserStatsTable> conflictColumns,
    _is.ColumnSelections<UserStatsTable>? updateColumns,
    _is.WhereExpressionBuilder<UserStatsTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<UserStats>(
      rows,
      conflictColumns: conflictColumns(UserStats.t),
      updateColumns: updateColumns?.call(UserStats.t),
      updateWhere: updateWhere?.call(UserStats.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [UserStats] and returns the resulting row.
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
  /// The returned [UserStats] will have its `id` field set.
  Future<UserStats?> upsertRow(
    _is.DatabaseSession session,
    UserStats row, {
    required _is.ColumnSelections<UserStatsTable> conflictColumns,
    _is.ColumnSelections<UserStatsTable>? updateColumns,
    _is.WhereExpressionBuilder<UserStatsTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<UserStats>(
      row,
      conflictColumns: conflictColumns(UserStats.t),
      updateColumns: updateColumns?.call(UserStats.t),
      updateWhere: updateWhere?.call(UserStats.t),
      transaction: transaction,
    );
  }

  /// Updates all [UserStats]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserStats>> update(
    _is.DatabaseSession session,
    List<UserStats> rows, {
    _is.ColumnSelections<UserStatsTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<UserStats>(
      rows,
      columns: columns?.call(UserStats.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [UserStats]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<UserStats> updateRow(
    _is.DatabaseSession session,
    UserStats row, {
    _is.ColumnSelections<UserStatsTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserStats>(
      row,
      columns: columns?.call(UserStats.t),
      transaction: transaction,
    );
  }

  /// Updates a single [UserStats] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<UserStats?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<UserStatsUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<UserStats>(
      id,
      columnValues: columnValues(UserStats.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [UserStats]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<UserStats>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<UserStatsUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<UserStatsTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<UserStatsTable>? orderBy,
    _is.OrderByListBuilder<UserStatsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<UserStats>(
      columnValues: columnValues(UserStats.t.updateTable),
      where: where(UserStats.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserStats.t),
      orderByList: orderByList?.call(UserStats.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [UserStats]s in the list and returns the deleted rows.
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
  Future<List<UserStats>> delete(
    _is.DatabaseSession session,
    List<UserStats> rows, {
    _is.OrderByBuilder<UserStatsTable>? orderBy,
    _is.OrderByListBuilder<UserStatsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<UserStats>(
      rows,
      orderBy: orderBy?.call(UserStats.t),
      orderByList: orderByList?.call(UserStats.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [UserStats].
  Future<UserStats> deleteRow(
    _is.DatabaseSession session,
    UserStats row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserStats>(
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
  Future<List<UserStats>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<UserStatsTable> where,
    _is.OrderByBuilder<UserStatsTable>? orderBy,
    _is.OrderByListBuilder<UserStatsTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<UserStats>(
      where: where(UserStats.t),
      orderBy: orderBy?.call(UserStats.t),
      orderByList: orderByList?.call(UserStats.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<UserStatsTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<UserStats>(
      where: where?.call(UserStats.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [UserStats] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<UserStatsTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<UserStats>(
      where: where(UserStats.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
