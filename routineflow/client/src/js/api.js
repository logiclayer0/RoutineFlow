const API_BASE = import.meta.env.PROD
  ? 'https://routineflow-backend.onrender.com'
  : 'http://localhost:8080';

async function callServerpod(endpoint, params = {}) {
  const res = await fetch(`${API_BASE}${endpoint}`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(params)
  });
  if (!res.ok) {
    const err = await res.text();
    throw new Error(`Failed: ${endpoint} - ${err}`);
  }
  return res.json();
}

export async function fetchRoutines() {
  const result = await callServerpod('/routine/listRoutines');
  if (Array.isArray(result)) return result;
  if (result.routines && Array.isArray(result.routines)) return result.routines;
  if (result.result && Array.isArray(result.result)) return result.result;
  return [];
}

export async function createRoutine(name) {
  const result = await callServerpod('/routine/createRoutine', { name });
  if (result && result.id) return result;
  if (result && result.routine) return result.routine;
  if (result && result.result) return result.result;
  return result;
}

export async function toggleRoutineDay(routineId, date) {
  const result = await callServerpod('/routine/toggleRoutineDay', {
    routineId,
    date: date
  });
  return result;
}

export async function deleteRoutine(routineId) {
  await callServerpod('/routine/deleteRoutine', { routineId });
}

export async function fetchStreak(routineId) {
  const result = await callServerpod('/progress/getStreak', { routineId });
  return result;
}
