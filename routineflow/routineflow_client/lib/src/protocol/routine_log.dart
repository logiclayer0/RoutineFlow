                                                
                                                










import 'package:serverpod_client/serverpod_client.dart' as _isc;

abstract class RoutineLog
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
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
      date: _isc.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      completed: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['completed'],
      ),
    );
  }

  
  
  
  int? id;

  int routineId;

  DateTime date;

  bool completed;

  
  
  @_isc.useResult
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

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
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

  
  
  @_isc.useResult
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
