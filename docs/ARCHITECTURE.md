## Phase 1 Application Foundation

The Flutter application is organized by feature with shared application concerns under `lib/app/` and `lib/core/`.

- `lib/main.dart` performs the single Firebase initialization attempt using `DefaultFirebaseOptions.currentPlatform`, logs initialization failures, and starts the UI shell.
- `lib/app/app.dart` owns the Material application configuration.
- `lib/app/shell/app_shell.dart` owns the persistent four-destination `NavigationBar` and preserves each screen in an `IndexedStack`.
- `lib/core/theme/` owns the MachSight palette and Material 3 theme.
- `lib/features/*/presentation/screens/` owns the four Phase 1 placeholder screens.

Phase 1 intentionally contains no authentication, Firestore operations, telemetry, alert logic, maintenance workflow, or machine CRUD.
