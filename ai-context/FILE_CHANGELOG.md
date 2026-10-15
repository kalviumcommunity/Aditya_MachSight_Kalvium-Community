## 2026-10-15

- Starting state inspected: only the generated `lib/main.dart` and generated counter test provided app behavior; the repository was clean.
- External PRD v1.2 was not available as a local file. Figma inspection was attempted but blocked by unavailable WebGL.
- No implementation files changed yet at the time of this baseline entry.

### Implemented

- Replaced `lib/main.dart` with guarded Firebase initialization and `MachSightApp` startup.
- Added `lib/app/app.dart` and `lib/app/shell/app_shell.dart`.
- Added centralized constants, colors, theme, and placeholder widget under `lib/core/`.
- Added Dashboard, Machines, Alerts, and Tasks placeholder screens under their feature folders.
- Replaced the generated counter test with startup, navigation-order, and tab-switching widget tests in `test/widget_test.dart`.
- Added Phase 1 architecture notes to `docs/ARCHITECTURE.md`.
- No dependencies were added.
