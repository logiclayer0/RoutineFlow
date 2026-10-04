import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class RoutineEndpoint extends Endpoint {
  Future<Routine> createRoutine(Session session, String name) async {
    final routine = Routine(
      name: name,
      createdAt: DateTime.now(),
      isActive: true,
    );
    return await Routine.db.insertRow(session, routine);
  }

  Future<List<Routine>> listRoutines(Session session) async {
    return await Routine.db.find(
      session,
      where: (t) => t.isActive.equals(true),
      orderBy: (t) => t.createdAt,
    );
  }

  Future<bool> toggleRoutineDay(
    Session session,
    int routineId,
    DateTime date,
  ) async {
    final normalizedDate = DateTime(date.year, date.month, date.day);

    final existing = await RoutineLog.db.findFirstRow(
      session,
      where: (t) =>
          t.routineId.equals(routineId) & t.date.equals(normalizedDate),
    );

    if (existing != null) {
      existing.completed = !existing.completed;
      await RoutineLog.db.updateRow(session, existing);
      return existing.completed;
    }

    final log = RoutineLog(
      routineId: routineId,
      date: normalizedDate,
      completed: true,
    );
    await RoutineLog.db.insertRow(session, log);
    return true;
  }

  Future<void> deleteRoutine(Session session, int routineId) async {
    final routine = await Routine.db.findById(session, routineId);
    if (routine != null) {
      routine.isActive = false;
      await Routine.db.updateRow(session, routine);
    }
  }

  Future<List<RoutineLog>> getRoutineLogs(
    Session session,
    int routineId,
  ) async {
    return await RoutineLog.db.find(
      session,
      where: (t) => t.routineId.equals(routineId),
      orderBy: (t) => t.date,
    );
  }
}