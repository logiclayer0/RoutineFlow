export function formatDate(date) {
  return date.toLocaleDateString('en-US', {
    weekday: 'long',
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  });
}

export function getWeekDays() {
  const days = [];
  const today = new Date();
  const dayOfWeek = today.getDay();
  const diff = dayOfWeek === 0 ? 6 : dayOfWeek - 1;

  for (let i = 0; i < 7; i++) {
    const d = new Date(today);
    d.setDate(today.getDate() - diff + i);
    days.push({
      label: ['M', 'T', 'W', 'T', 'F', 'S', 'S'][i],
      date: d.getDate(),
      fullDate: d.toISOString().split('T')[0]
    });
  }
  return days;
}

export function calculateStreak(logs) {
  if (!logs || logs.length === 0) return 0;

  const sorted = [...logs]
    .filter(l => l.completed)
    .map(l => l.date)
    .sort()
    .reverse();

  if (sorted.length === 0) return 0;

  let streak = 0;
  const today = new Date().toISOString().split('T')[0];
  let checkDate = today;

  for (const date of sorted) {
    if (date === checkDate) {
      streak++;
      const d = new Date(checkDate);
      d.setDate(d.getDate() - 1);
      checkDate = d.toISOString().split('T')[0];
    } else if (date < checkDate) {
      break;
    }
  }

  return streak;
}