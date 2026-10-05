                                                
                                                










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
