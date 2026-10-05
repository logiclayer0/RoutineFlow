                                                
                                                










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
