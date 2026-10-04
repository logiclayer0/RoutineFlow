import { formatDate, getWeekDays, calculateStreak } from './utils.js';
import {
  fetchRoutines,
  createRoutine,
  toggleRoutineDay,
  deleteRoutine
} from './api.js';

let routines = [];
let weekDays = [];

async function init() {
  document.getElementById('current-date').textContent = formatDate(new Date());
  weekDays = getWeekDays();

  try {
    routines = await fetchRoutines();
  } catch (err) {
    console.error(err);
    routines = [];
  }

  renderRoutines();
  updateMetrics();
  updateAnalytics();
  updateArchive();

  document.getElementById('add-routine-btn').addEventListener('click', handleAddRoutine);
  document.getElementById('routine-input').addEventListener('keypress', (e) => {
    if (e.key === 'Enter') handleAddRoutine();
  });

  document.querySelectorAll('.nav-item').forEach(item => {
    item.addEventListener('click', (e) => {
      e.preventDefault();
      const view = item.dataset.view;
      switchView(view);
    });
  });
}

function switchView(view) {
  document.querySelectorAll('.nav-item').forEach(i => i.classList.remove('active'));
  document.querySelector(`.nav-item[data-view="${view}"]`)?.classList.add('active');

  document.querySelectorAll('.view').forEach(v => v.classList.remove('active'));
  document.getElementById(`view-${view}`)?.classList.add('active');
}

async function handleAddRoutine() {
  const input = document.getElementById('routine-input');
  const name = input.value.trim();
  if (!name) return;

  try {
    const newRoutine = await createRoutine(name);
    if (newRoutine) {
      routines.push(newRoutine);
      input.value = '';
      renderRoutines();
      updateMetrics();
      updateAnalytics();
      updateArchive();
    }
  } catch (err) {
    console.error(err);
  }
}

async function handleToggle(routineId, date) {
  try {
    await toggleRoutineDay(routineId, date);
    const routine = routines.find(r => r.id === routineId);
    if (routine) {
      if (!routine.logs) routine.logs = [];
      const log = routine.logs.find(l => l.date === date);
      if (log) {
        log.completed = !log.completed;
      } else {
        routine.logs.push({ date, completed: true });
      }
    }
    renderRoutines();
    updateMetrics();
    updateAnalytics();
    updateArchive();
  } catch (err) {
    console.error(err);
  }
}

async function handleDelete(routineId) {
  try {
    await deleteRoutine(routineId);
    routines = routines.filter(r => r.id !== routineId);
    renderRoutines();
    updateMetrics();
    updateAnalytics();
    updateArchive();
  } catch (err) {
    console.error(err);
  }
}

function renderRoutines() {
  const container = document.getElementById('routine-list');

  if (routines.length === 0) {
    container.innerHTML = `<div class="empty-state">No routines yet. Commit your first target above to begin.</div>`;
    return;
  }

  container.innerHTML = routines.map(routine => {
    const streak = calculateStreak(routine.logs || []);

    const daysHtml = weekDays.map(day => {
      const log = (routine.logs || []).find(l => l.date === day.fullDate);
      const checked = log?.completed ? 'checked' : '';
      return `
        <div class="day-chip ${checked}" data-routine="${routine.id}" data-date="${day.fullDate}">
          <span class="day-label">${day.label}</span>
          <span class="day-num">${day.date}</span>
        </div>`;
    }).join('');

    return `
      <div class="routine-row">
        <div class="routine-name">${routine.name}</div>
        <div class="days-grid">${daysHtml}</div>
        <div class="streak-cell">
          <span class="streak-fire">🔥</span>
          <span>${streak}</span>
        </div>
        <div><button class="delete-btn" data-id="${routine.id}">Remove</button></div>
      </div>
    `;
  }).join('');

  container.querySelectorAll('.day-chip').forEach(el => {
    el.addEventListener('click', () => {
      handleToggle(parseInt(el.dataset.routine), el.dataset.date);
    });
  });

  container.querySelectorAll('.delete-btn').forEach(el => {
    el.addEventListener('click', () => {
      handleDelete(parseInt(el.dataset.id));
    });
  });
}

function updateMetrics() {
  const totalRoutines = routines.length;
  let totalCompleted = 0;
  let bestStreak = 0;

  routines.forEach(r => {
    totalCompleted += (r.logs || []).filter(l => l.completed).length;
    const s = calculateStreak(r.logs || []);
    if (s > bestStreak) bestStreak = s;
  });

  const totalPossible = totalRoutines * 7;
  const percent = totalPossible === 0 ? 0 : Math.round((totalCompleted / totalPossible) * 100);

  document.getElementById('metric-routines').textContent = totalRoutines;
  document.getElementById('metric-completions').textContent = totalCompleted;
  document.getElementById('metric-streak').textContent = bestStreak;
  document.getElementById('progress-percent').textContent = `${percent}%`;
  document.getElementById('progress-fill').style.width = `${percent}%`;
  document.getElementById('progress-caption').textContent = `${totalCompleted} of ${totalPossible} targets`;
}

function updateAnalytics() {
  const totalRoutines = routines.length;
  let totalCompleted = 0;

  routines.forEach(r => {
    totalCompleted += (r.logs || []).filter(l => l.completed).length;
  });

  const totalPossible = totalRoutines * 7;
  const consistency = totalPossible === 0 ? 0 : Math.round((totalCompleted / totalPossible) * 100);

  document.getElementById('analytics-total').textContent = totalRoutines;
  document.getElementById('analytics-completions').textContent = totalCompleted;
  document.getElementById('analytics-consistency').textContent = `${consistency}%`;

  const list = document.getElementById('analytics-list');
  if (routines.length === 0) {
    list.innerHTML = `<div class="empty-state">No data yet. Start committing routines.</div>`;
    return;
  }

  list.innerHTML = routines.map(r => {
    const logs = r.logs || [];
    const hits = logs.filter(l => l.completed).length;
    const daysActive = new Set(logs.filter(l => l.completed).map(l => l.date)).size;
    const streak = calculateStreak(logs);

    return `
      <div class="routine-row">
        <div class="routine-name">${r.name}</div>
        <div>${daysActive} days</div>
        <div>${hits} hits</div>
        <div class="streak-cell"><span class="streak-fire">🔥</span> ${streak}</div>
      </div>
    `;
  }).join('');
}

function updateArchive() {
  const list = document.getElementById('archive-list');

  if (routines.length === 0) {
    list.innerHTML = `<div class="empty-state">No archived routines.</div>`;
    return;
  }

  list.innerHTML = routines.map(r => {
    const streak = calculateStreak(r.logs || []);
    const created = r.createdAt ? new Date(r.createdAt).toLocaleDateString() : '—';
    const status = r.isActive ? 'Active' : 'Archived';

    return `
      <div class="routine-row">
        <div class="routine-name">${r.name}</div>
        <div>${status}</div>
        <div>${created}</div>
        <div class="streak-cell"><span class="streak-fire">🔥</span> ${streak}</div>
      </div>
    `;
  }).join('');
}

init();