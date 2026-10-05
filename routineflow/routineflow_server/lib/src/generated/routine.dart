                                                
                                                










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
