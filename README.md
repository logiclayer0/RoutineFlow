# RoutineFlow

**Plan your routines. Track your progress. Build consistency.**

RoutineFlow is a routine and habit-tracking application built to help users organize everyday activities, record completed routines, and keep track of their consistency over time. The project brings routine management and progress tracking into one focused workflow.

<p align="center">
  <a href="https://drive.google.com/file/d/1UpLOLMhcMTFgOnDmZ5A_aQ512CuJIjKG/view?usp=sharing">
    <strong>▶ Watch the RoutineFlow Demo</strong>
  </a>
  <br />
  <sub>View the project walkthrough and see the application in action.</sub>
</p>

<p align="center">
  <a href="https://github.com/logiclayer0/RoutineFlow">
    <img src="https://img.shields.io/badge/GitHub-Repository-181717?logo=github" alt="GitHub repository" />
  </a>
  <img src="https://img.shields.io/badge/Backend-Dart-0175C2?logo=dart&logoColor=white" alt="Dart backend" />
  <img src="https://img.shields.io/badge/Framework-Serverpod-5B4BDB" alt="Serverpod framework" />
</p>

## Overview

Keeping up with daily routines is easier when activities and progress are organized in one place. RoutineFlow is designed around that idea: create routines, record completions, and review consistency over time.

## Features

- **Routine Management** — Create and organize routines around daily goals.
- **Completion Tracking** — Record when a routine has been completed.
- **Streak Tracking** — Track consecutive completion days to encourage consistency.
- **Progress History** — Keep completion records to review activity over time.
- **Organized Backend** — Separate routine and progress operations into dedicated Serverpod endpoints.

## Technology Stack

| Technology | Purpose |
| --- | --- |
| Dart | Backend development |
| Serverpod | Backend framework and endpoint structure |
| Git & GitHub | Version control and source code hosting |

## Demo

**[Watch the live project walkthrough on Google Drive](https://drive.google.com/file/d/1UpLOLMhcMTFgOnDmZ5A_aQ512CuJIjKG/view?usp=sharing)**

If the video does not open directly, open the link in a browser and sign in to Google if access is requested.

## Getting Started

### Prerequisites

- Git
- Dart SDK
- The Serverpod tooling and dependencies required by this project
- A configured database and local environment settings, as required by the backend

### 1. Clone the repository

```bash
git clone https://github.com/logiclayer0/RoutineFlow.git
cd RoutineFlow
```

### 2. Locate the backend

Open the cloned repository in your preferred editor, such as Visual Studio Code. Navigate to the RoutineFlow Serverpod backend directory.

### 3. Install dependencies

From the backend package directory, install dependencies using the package manager and setup instructions for the project.

```bash
dart pub get
```

### 4. Configure the environment

Set up the database connection and any required environment configuration for your local installation. Keep credentials, API keys, and other secrets out of source control.

### 5. Generate code when needed

If you modify Serverpod models or endpoint definitions, run the code-generation command supported by the Serverpod version configured in the project.

### 6. Run the backend

Start the server using the project's configured Serverpod run command. If using a separate frontend, ensure its API base URL points to the backend environment you are running.

> **Note:** Exact run commands and environment variables can vary by the project's Serverpod version and local configuration. Check the package configuration and Serverpod setup files before starting the server.

## Project Structure

The backend is organized around Serverpod endpoints, with routine-related operations and progress-related operations maintained separately. Generated protocol code provides the models and types used by the backend.

## Roadmap

Potential areas for future development include:

- More detailed progress summaries and visualizations
- Additional routine scheduling and personalization options
- Expanded insights into consistency over time
- Further usability and reliability improvements

## Contributing

Ideas, bug reports, and improvements are welcome. You can open an issue or submit a pull request through the [GitHub repository](https://github.com/logiclayer0/RoutineFlow).

## License

No license information is specified here. Please check the repository for license details before reusing or distributing the code.

---

Made to make everyday routines easier to manage, one step at a time.
