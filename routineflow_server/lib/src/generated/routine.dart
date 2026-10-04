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

abstract class Routine
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  Routine._({
    this.id,
    required this.name,
    required this.createdAt,
    required this.isActive,
  });

  factory Routine({
    int? id,
    required String name,
    required DateTime createdAt,
    required bool isActive,
  }) = _RoutineImpl;

  factory Routine.fromJson(Map<String, dynamic> jsonSerialization) {
    return Routine(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      isActive: _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  static final t = RoutineTable();

  static const db = RoutineRepository._();

  @override
  int? id;

  String name;

  DateTime createdAt;

  bool isActive;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [Routine]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Routine copyWith({
    int? id,
    String? name,
    DateTime? createdAt,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Routine',
      if (id != null) 'id': id,
      'name': name,
      'createdAt': createdAt.toJson(),
      'isActive': isActive,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Routine',
      if (id != null) 'id': id,
      'name': name,
      'createdAt': createdAt.toJson(),
      'isActive': isActive,
    };
  }

  static RoutineInclude include() {
    return RoutineInclude._();
  }

  static RoutineIncludeList includeList({
    _is.WhereExpressionBuilder<RoutineTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RoutineTable>? orderBy,
    _is.OrderByListBuilder<RoutineTable>? orderByList,
    RoutineInclude? include,
  }) {
    return RoutineIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Routine.t),
      orderByList: orderByList?.call(Routine.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RoutineImpl extends Routine {
  _RoutineImpl({
    int? id,
    required String name,
    required DateTime createdAt,
    required bool isActive,
  }) : super._(
         id: id,
         name: name,
         createdAt: createdAt,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [Routine]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Routine copyWith({
    Object? id = _Undefined,
    String? name,
    DateTime? createdAt,
    bool? isActive,
  }) {
    return Routine(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      isActive: isActive ?? this.isActive,
    );
  }
}

class RoutineUpdateTable extends _is.UpdateTable<RoutineTable> {
  RoutineUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );
}

class RoutineTable extends _is.Table<int?> {
  RoutineTable({super.tableRelation}) : super(tableName: 'routine') {
    updateTable = RoutineUpdateTable(this);
    name = _is.ColumnString(
      'name',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
    );
  }

  late final RoutineUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnBool isActive;

  @override
  List<_is.Column> get columns => [
    id,
    name,
    createdAt,
    isActive,
  ];
}

class RoutineInclude extends _is.IncludeObject {
  RoutineInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => Routine.t;
}

class RoutineIncludeList extends _is.IncludeList {
  RoutineIncludeList._({
    _is.WhereExpressionBuilder<RoutineTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Routine.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => Routine.t;
}

class RoutineRepository {
  const RoutineRepository._();

  /// Returns a list of [Routine]s matching the given query parameters.
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
  Future<List<Routine>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RoutineTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RoutineTable>? orderBy,
    _is.OrderByListBuilder<RoutineTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Routine>(
      where: where?.call(Routine.t),
      orderBy: orderBy?.call(Routine.t),
      orderByList: orderByList?.call(Routine.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Routine] matching the given query parameters.
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
  Future<Routine?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RoutineTable>? where,
    int? offset,
    _is.OrderByBuilder<RoutineTable>? orderBy,
    _is.OrderByListBuilder<RoutineTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Routine>(
      where: where?.call(Routine.t),
      orderBy: orderBy?.call(Routine.t),
      orderByList: orderByList?.call(Routine.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Routine] by its [id] or null if no such row exists.
  Future<Routine?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Routine>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Routine]s in the list and returns the inserted rows.
  ///
  /// The returned [Routine]s will have their `id` fields set.
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
  Future<List<Routine>> insert(
    _is.DatabaseSession session,
    List<Routine> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Routine>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Routine] and returns the inserted row.
  ///
  /// The returned [Routine] will have its `id` field set.
  Future<Routine> insertRow(
    _is.DatabaseSession session,
    Routine row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Routine>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [Routine]s in the list and returns the resulting rows.
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
  /// The returned [Routine]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Routine>> upsert(
    _is.DatabaseSession session,
    List<Routine> rows, {
    required _is.ColumnSelections<RoutineTable> conflictColumns,
    _is.ColumnSelections<RoutineTable>? updateColumns,
    _is.WhereExpressionBuilder<RoutineTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Routine>(
      rows,
      conflictColumns: conflictColumns(Routine.t),
      updateColumns: updateColumns?.call(Routine.t),
      updateWhere: updateWhere?.call(Routine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Routine] and returns the resulting row.
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
  /// The returned [Routine] will have its `id` field set.
  Future<Routine?> upsertRow(
    _is.DatabaseSession session,
    Routine row, {
    required _is.ColumnSelections<RoutineTable> conflictColumns,
    _is.ColumnSelections<RoutineTable>? updateColumns,
    _is.WhereExpressionBuilder<RoutineTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Routine>(
      row,
      conflictColumns: conflictColumns(Routine.t),
      updateColumns: updateColumns?.call(Routine.t),
      updateWhere: updateWhere?.call(Routine.t),
      transaction: transaction,
    );
  }

  /// Updates all [Routine]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Routine>> update(
    _is.DatabaseSession session,
    List<Routine> rows, {
    _is.ColumnSelections<RoutineTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Routine>(
      rows,
      columns: columns?.call(Routine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Routine]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Routine> updateRow(
    _is.DatabaseSession session,
    Routine row, {
    _is.ColumnSelections<RoutineTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Routine>(
      row,
      columns: columns?.call(Routine.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Routine] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Routine?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<RoutineUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Routine>(
      id,
      columnValues: columnValues(Routine.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Routine]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Routine>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<RoutineUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<RoutineTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<RoutineTable>? orderBy,
    _is.OrderByListBuilder<RoutineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Routine>(
      columnValues: columnValues(Routine.t.updateTable),
      where: where(Routine.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Routine.t),
      orderByList: orderByList?.call(Routine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Routine]s in the list and returns the deleted rows.
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
  Future<List<Routine>> delete(
    _is.DatabaseSession session,
    List<Routine> rows, {
    _is.OrderByBuilder<RoutineTable>? orderBy,
    _is.OrderByListBuilder<RoutineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Routine>(
      rows,
      orderBy: orderBy?.call(Routine.t),
      orderByList: orderByList?.call(Routine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Routine].
  Future<Routine> deleteRow(
    _is.DatabaseSession session,
    Routine row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Routine>(
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
  Future<List<Routine>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<RoutineTable> where,
    _is.OrderByBuilder<RoutineTable>? orderBy,
    _is.OrderByListBuilder<RoutineTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Routine>(
      where: where(Routine.t),
      orderBy: orderBy?.call(Routine.t),
      orderByList: orderByList?.call(Routine.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<RoutineTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Routine>(
      where: where?.call(Routine.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Routine] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<RoutineTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Routine>(
      where: where(Routine.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
