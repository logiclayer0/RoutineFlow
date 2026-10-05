                                                
                                                










import 'package:serverpod_client/serverpod_client.dart' as _isc;

abstract class UserStats
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
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
      lastActive: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['lastActive'],
      ),
    );
  }

  
  
  
  int? id;

  String userId;

  int xp;

  int level;

  int currentStreak;

  int longestStreak;

  DateTime lastActive;

  
  
  @_isc.useResult
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

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
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

  
  
  @_isc.useResult
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
