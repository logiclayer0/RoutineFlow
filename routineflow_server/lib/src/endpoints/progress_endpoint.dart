import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ProgressEndpoint extends Endpoint {
  Future<int> getStreak(Session session, int routineId) async {
    final logs = await RoutineLog.db.find(
      session,
      where: (t) => t.routineId.equals(routineId) & t.completed.equals(true),
      orderBy: (t) => t.date,
    );

    if (logs.isEmpty) return 0;

    final sorted = logs.reversed.toList();

    int streak = 0;
    final now = DateTime.now();
    DateTime checkDate = DateTime(now.year, now.month, now.day);

    for (final log in sorted) {
      final logDate = DateTime(log.date.year, log.date.month, log.date.day);

      if (logDate == checkDate) {
        streak++;
        checkDate = checkDate.subtract(const Duration(days: 1));
      } else if (logDate.isBefore(checkDate)) {
        break;
      }
    }

    return streak;
  }

  Future<int> getWeeklyProgress(Session session) async {
    final now = DateTime.now();
    final weekStart = now.subtract(Duration(days: now.weekday - 1));
    final normalizedStart =
        DateTime(weekStart.year, weekStart.month, weekStart.day);

    final logs = await RoutineLog.db.find(
      session,
      where: (t) => t.completed.equals(true),
    );

    return logs.where((log) => !log.date.isBefore(normalizedStart)).length;
  }

  Future<Map<String, int>> getStats(Session session) async {
    final routines = await Routine.db.find(
      session,
      where: (t) => t.isActive.equals(true),
    );

    final logs = await RoutineLog.db.find(
      session,
      where: (t) => t.completed.equals(true),
    );

    return {
      'totalRoutines': routines.length,
      'totalCompleted': logs.length,
    };
  }
}