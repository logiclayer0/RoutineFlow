# RoutineFlow

**Build better habits. Stay consistent. Track your progress.**

RoutineFlow is a routine and habit-tracking application designed to help users organize daily routines, record completed activities, and monitor consistency over time. It brings routine planning and progress tracking together in one place.

## Demo

▶️ **[Watch the RoutineFlow demo video](https://drive.google.com/file/d/1UpLOLMhcMTFgOnDmZ5A_aQ512CuJIjKG/view?usp=sharing)**

## Project Repository

[github.com/logiclayer0/RoutineFlow](https://github.com/logiclayer0/RoutineFlow)

## Core Features

- **Routine Management** — Create and organize routines around your daily goals.
- **Progress Tracking** — Record completed routines and review your activity.
- **Streak Tracking** — Monitor consecutive days of completion to encourage consistency.
- **Routine History** — Keep track of completion records over time.
- **Structured Backend** — Organize routine and progress functionality through separate endpoints.

## Technology

- **Backend:** Dart and Serverpod
- **API:** Serverpod endpoints for routine and progress operations
- **Version Control:** Git and GitHub

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/logiclayer0/RoutineFlow.git
cd RoutineFlow
```

### 2. Open the project

Open the cloned repository in your preferred IDE, such as Visual Studio Code.

### 3. Configure the backend

Navigate to the Serverpod backend directory and install the dependencies required by the project. Configure the database and Serverpod settings for your environment.

### 4. Generate Serverpod code

If you change protocol models or endpoint definitions, run the code-generation command configured for the project. Check the project's package scripts and installed Serverpod version for the correct command.

### 5. Run the application

Start the backend using the run configuration provided by the project. If the repository contains a separate frontend, configure its API base URL to point to the running backend before starting it.

> **Configuration note:** Required environment variables and database settings depend on your setup. Keep credentials and other secrets out of version control.

## Project Structure

The backend uses a Serverpod endpoint-based structure, with routine operations and progress operations organized separately. Generated protocol files provide the models and API types used by the backend.

## Future Improvements

- More detailed routine and consistency insights
- Improved progress visualizations
- Additional routine-planning and personalization options

## Contributing

Suggestions, bug reports, and improvements are welcome. Open an issue or submit a pull request through the GitHub repository.

## About

RoutineFlow is a project focused on making daily routines easier to manage and helping users build consistency through progress tracking.

---

If you find the project useful, consider starring the repository.
