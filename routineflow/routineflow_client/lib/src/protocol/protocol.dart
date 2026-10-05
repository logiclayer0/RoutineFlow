                                                
                                                











import 'package:routineflow_client/src/protocol/routine.dart' as _ik94qckj;
import 'package:routineflow_client/src/protocol/routine_log.dart' as _ivecpi58;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _iacc;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _iaic;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'routine.dart' as _iw5kbyl2;
import 'routine_log.dart' as _ikvggoyw;
import 'user_stats.dart' as _ivxemw1j;
export 'routine.dart';
export 'routine_log.dart';
export 'user_stats.dart';
export 'client.dart';

class Protocol extends _isc.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._().._registerHostProtocols();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on _isc.DeserializationClassNameNotFoundException catch (_) {
        
        
        
      }
    }

    if (t == _iw5kbyl2.Routine) {
      return _iw5kbyl2.Routine.fromJson(data) as T;
    }
    if (t == _ikvggoyw.RoutineLog) {
      return _ikvggoyw.RoutineLog.fromJson(data) as T;
    }
    if (t == _ivxemw1j.UserStats) {
      return _ivxemw1j.UserStats.fromJson(data) as T;
    }
    if (t == _isc.getType<_iw5kbyl2.Routine?>()) {
      return (data != null ? _iw5kbyl2.Routine.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ikvggoyw.RoutineLog?>()) {
      return (data != null ? _ikvggoyw.RoutineLog.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ivxemw1j.UserStats?>()) {
      return (data != null ? _ivxemw1j.UserStats.fromJson(data) : null) as T;
    }
    if (t == Map<String, int>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<int>(v)),
          )
          as T;
    }
    if (t == List<_ik94qckj.Routine>) {
      return (data as List)
              .map((e) => deserialize<_ik94qckj.Routine>(e))
              .toList()
          as T;
    }
    if (t == List<_ivecpi58.RoutineLog>) {
      return (data as List)
              .map((e) => deserialize<_ivecpi58.RoutineLog>(e))
              .toList()
          as T;
    }
    try {
      return _iaic.Protocol().deserialize<T>(data, t);
    } on _isc.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _iacc.Protocol().deserialize<T>(data, t);
    } on _isc.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _iw5kbyl2.Routine => 'Routine',
      _ikvggoyw.RoutineLog => 'RoutineLog',
      _ivxemw1j.UserStats => 'UserStats',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('routineflow.', '');
    }

    switch (data) {
      case _iw5kbyl2.Routine():
        return 'Routine';
      case _ikvggoyw.RoutineLog():
        return 'RoutineLog';
      case _ivxemw1j.UserStats():
        return 'UserStats';
    }
    className = _iaic.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.')
          ? className
          : 'serverpod_auth_idp.$className';
    }
    className = _iacc.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.')
          ? className
          : 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Routine') {
      return deserialize<_iw5kbyl2.Routine>(data['data']);
    }
    if (dataClassName == 'RoutineLog') {
      return deserialize<_ikvggoyw.RoutineLog>(data['data']);
    }
    if (dataClassName == 'UserStats') {
      return deserialize<_ivxemw1j.UserStats>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _iaic.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _iacc.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  void _registerHostProtocols() {
    _iaic.Protocol().registerHostProtocol('routineflow', this);
    _iacc.Protocol().registerHostProtocol('routineflow', this);
  }

  @override
  String getModuleName() => 'routineflow';

  
  
  
  
  
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _iaic.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _iacc.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
