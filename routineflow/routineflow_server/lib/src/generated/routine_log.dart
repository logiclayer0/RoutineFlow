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

abstract class RoutineLog
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  RoutineLog._({
    this.id,
    required this.routineId,
    required this.date,
    required this.completed,
  });

  factory RoutineLog({
    int? id,
    required int routineId,
    required DateTime date,
    required bool completed,
  }) = _RoutineLogImpl;

  factory RoutineLog.fromJson(Map<String, dynamic> jsonSerialization) {
    return RoutineLog(
      id: jsonSerialization['id'] as int?,
      routineId: jsonSerialization['routineId'] as int,
      date: _is.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      completed: _is.BoolJsonExtension.fromJson(jsonSerialization['completed']),
    );
  }

  static final t = RoutineLogTable();

  static const db = RoutineLogRepository._();

  @override
  int? id;

  int routineId;

  DateTime date;

  bool completed;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [RoutineLog]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  RoutineLog copyWith({
    int? id,
    int? routineId,
    DateTime? date,
    bool? completed,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RoutineLog',
      if (id != null) 'id': id,
      'routineId': routineId,
      'date': date.toJson(),
      'completed': completed,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'RoutineLog',
      if (id != null) 'id': id,
      'routineId': routineId,
      'date': date.toJson(),
      'completed': completed,
    };
  }

  static RoutineLogInclude include() {
    return RoutineLogInclude._();
  }

  static RoutineLogIncludeList includeList({
    _is.WhereExpressionBuilder<RoutineLogTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RoutineLogTable>? orderBy,
    _is.OrderByListBuilder<RoutineLogTable>? orderByList,
    RoutineLogInclude? include,
  }) {
    return RoutineLogIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RoutineLog.t),
      orderByList: orderByList?.call(RoutineLog.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RoutineLogImpl extends RoutineLog {
  _RoutineLogImpl({
    int? id,
    required int routineId,
    required DateTime date,
    required bool completed,
  }) : super._(
         id: id,
         routineId: routineId,
         date: date,
         completed: completed,
       );

  /// Returns a shallow copy of this [RoutineLog]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  RoutineLog copyWith({
    Object? id = _Undefined,
    int? routineId,
    DateTime? date,
    bool? completed,
  }) {
    return RoutineLog(
      id: id is int? ? id : this.id,
      routineId: routineId ?? this.routineId,
      date: date ?? this.date,
      completed: completed ?? this.completed,
    );
  }
}

class RoutineLogUpdateTable extends _is.UpdateTable<RoutineLogTable> {
  RoutineLogUpdateTable(super.table);

  _is.ColumnValue<int, int> routineId(int value) => _is.ColumnValue(
    table.routineId,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> date(DateTime value) => _is.ColumnValue(
    table.date,
    value,
  );

  _is.ColumnValue<bool, bool> completed(bool value) => _is.ColumnValue(
    table.completed,
    value,
  );
}

class RoutineLogTable extends _is.Table<int?> {
  RoutineLogTable({super.tableRelation}) : super(tableName: 'routine_log') {
    updateTable = RoutineLogUpdateTable(this);
    routineId = _is.ColumnInt(
      'routineId',
      this,
    );
    date = _is.ColumnDateTime(
      'date',
      this,
    );
    completed = _is.ColumnBool(
      'completed',
      this,
    );
  }

  late final RoutineLogUpdateTable updateTable;

  late final _is.ColumnInt routineId;

  late final _is.ColumnDateTime date;

  late final _is.ColumnBool completed;

  @override
  List<_is.Column> get columns => [
    id,
    routineId,
    date,
    completed,
  ];
}

class RoutineLogInclude extends _is.IncludeObject {
  RoutineLogInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => RoutineLog.t;
}

class RoutineLogIncludeList extends _is.IncludeList {
  RoutineLogIncludeList._({
    _is.WhereExpressionBuilder<RoutineLogTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RoutineLog.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => RoutineLog.t;
}

class RoutineLogRepository {
  const RoutineLogRepository._();

  /// Returns a list of [RoutineLog]s matching the given query parameters.
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
  Future<List<RoutineLog>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RoutineLogTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RoutineLogTable>? orderBy,
    _is.OrderByListBuilder<RoutineLogTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<RoutineLog>(
      where: where?.call(RoutineLog.t),
      orderBy: orderBy?.call(RoutineLog.t),
      orderByList: orderByList?.call(RoutineLog.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [RoutineLog] matching the given query parameters.
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
  Future<RoutineLog?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RoutineLogTable>? where,
    int? offset,
    _is.OrderByBuilder<RoutineLogTable>? orderBy,
    _is.OrderByListBuilder<RoutineLogTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<RoutineLog>(
      where: where?.call(RoutineLog.t),
      orderBy: orderBy?.call(RoutineLog.t),
      orderByList: orderByList?.call(RoutineLog.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [RoutineLog] by its [id] or null if no such row exists.
  Future<RoutineLog?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<RoutineLog>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [RoutineLog]s in the list and returns the inserted rows.
  ///
  /// The returned [RoutineLog]s will have their `id` fields set.
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
  Future<List<RoutineLog>> insert(
    _is.DatabaseSession session,
    List<RoutineLog> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<RoutineLog>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [RoutineLog] and returns the inserted row.
  ///
  /// The returned [RoutineLog] will have its `id` field set.
  Future<RoutineLog> insertRow(
    _is.DatabaseSession session,
    RoutineLog row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<RoutineLog>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [RoutineLog]s in the list and returns the resulting rows.
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
  /// The returned [RoutineLog]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RoutineLog>> upsert(
    _is.DatabaseSession session,
    List<RoutineLog> rows, {
    required _is.ColumnSelections<RoutineLogTable> conflictColumns,
    _is.ColumnSelections<RoutineLogTable>? updateColumns,
    _is.WhereExpressionBuilder<RoutineLogTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<RoutineLog>(
      rows,
      conflictColumns: conflictColumns(RoutineLog.t),
      updateColumns: updateColumns?.call(RoutineLog.t),
      updateWhere: updateWhere?.call(RoutineLog.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [RoutineLog] and returns the resulting row.
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
  /// The returned [RoutineLog] will have its `id` field set.
  Future<RoutineLog?> upsertRow(
    _is.DatabaseSession session,
    RoutineLog row, {
    required _is.ColumnSelections<RoutineLogTable> conflictColumns,
    _is.ColumnSelections<RoutineLogTable>? updateColumns,
    _is.WhereExpressionBuilder<RoutineLogTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<RoutineLog>(
      row,
      conflictColumns: conflictColumns(RoutineLog.t),
      updateColumns: updateColumns?.call(RoutineLog.t),
      updateWhere: updateWhere?.call(RoutineLog.t),
      transaction: transaction,
    );
  }

  /// Updates all [RoutineLog]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RoutineLog>> update(
    _is.DatabaseSession session,
    List<RoutineLog> rows, {
    _is.ColumnSelections<RoutineLogTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<RoutineLog>(
      rows,
      columns: columns?.call(RoutineLog.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [RoutineLog]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<RoutineLog> updateRow(
    _is.DatabaseSession session,
    RoutineLog row, {
    _is.ColumnSelections<RoutineLogTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<RoutineLog>(
      row,
      columns: columns?.call(RoutineLog.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RoutineLog] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<RoutineLog?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<RoutineLogUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<RoutineLog>(
      id,
      columnValues: columnValues(RoutineLog.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [RoutineLog]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<RoutineLog>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<RoutineLogUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<RoutineLogTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RoutineLogTable>? orderBy,
    _is.OrderByListBuilder<RoutineLogTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<RoutineLog>(
      columnValues: columnValues(RoutineLog.t.updateTable),
      where: where(RoutineLog.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RoutineLog.t),
      orderByList: orderByList?.call(RoutineLog.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [RoutineLog]s in the list and returns the deleted rows.
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
  Future<List<RoutineLog>> delete(
    _is.DatabaseSession session,
    List<RoutineLog> rows, {
    _is.OrderByBuilder<RoutineLogTable>? orderBy,
    _is.OrderByListBuilder<RoutineLogTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<RoutineLog>(
      rows,
      orderBy: orderBy?.call(RoutineLog.t),
      orderByList: orderByList?.call(RoutineLog.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [RoutineLog].
  Future<RoutineLog> deleteRow(
    _is.DatabaseSession session,
    RoutineLog row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RoutineLog>(
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
  Future<List<RoutineLog>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<RoutineLogTable> where,
    _is.OrderByBuilder<RoutineLogTable>? orderBy,
    _is.OrderByListBuilder<RoutineLogTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<RoutineLog>(
      where: where(RoutineLog.t),
      orderBy: orderBy?.call(RoutineLog.t),
      orderByList: orderByList?.call(RoutineLog.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RoutineLogTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<RoutineLog>(
      where: where?.call(RoutineLog.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [RoutineLog] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<RoutineLogTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<RoutineLog>(
      where: where(RoutineLog.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
