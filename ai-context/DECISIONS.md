## Phase 1 Decisions - 2026-10-15

- Use a stateful app shell with `IndexedStack` and `NavigationBar` for the four persistent destinations: Dashboard, Machines, Alerts, and Tasks.
- Keep the app shell independent of Firebase so widget tests can exercise startup and navigation without network or platform configuration.
- Attempt Firebase initialization once in `main()` with `DefaultFirebaseOptions.currentPlatform`; log failures honestly and still launch the shell so unavailable platform configuration does not hide the UI foundation.
- Centralize the requested MachSight palette and Material 3 theme under `lib/core/theme/`.
- Keep Phase 1 screens as responsive, accessible placeholders with no fabricated telemetry, alerts, tasks, or Firebase-connected claims.

### Verified Outcome

- `flutter pub get`: completed; no dependency changes.
- `flutter analyze`: passed with no issues.
- `flutter test`: passed, 3 tests.
