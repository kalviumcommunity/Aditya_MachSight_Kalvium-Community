
# MachSight — Machine Monitoring & Maintenance

<p align="center">
  <strong>Smart Machine Monitoring. Faster Fault Detection. Reliable Maintenance.</strong>
</p>

<p align="center">
  A mobile-first manufacturing machine monitoring and maintenance MVP built with Flutter and Firebase.
</p>

---

## 📌 Overview

**MachSight** is a manufacturing machine monitoring and maintenance application designed to help mechanics and administrators identify machine faults earlier, manage maintenance activities, and maintain a traceable history of machine issues.

In traditional manufacturing workflows, inspections and breakdown events may only be reviewed at the end of a shift. This can delay fault identification, contribute to unplanned downtime, and make recurring problems harder to recognize.

MachSight addresses this problem through simulated machine telemetry, configurable threshold checks, fault alerts, maintenance tracking, and administrative verification.

> **MVP Scope:** Machine telemetry is simulated for demonstration and testing. The application does not connect to physical industrial machinery.

---

## 🎯 Problem Statement

Manufacturing teams need a centralized way to monitor machine conditions and manage maintenance issues. When faults are recorded late or tracked manually, teams may struggle to identify recurring problems, assign maintenance work, and verify that corrective actions have been completed.

MachSight provides a digital workflow for monitoring machine conditions and tracking faults from detection through maintenance and verification.

---

## 💡 Product Vision

To provide a simple, reliable, and traceable machine monitoring and maintenance workflow for manufacturing teams.

### Objectives

- Monitor simulated machine telemetry.
- Detect threshold violations.
- Generate fault records and alerts.
- Help mechanics acknowledge faults and manage maintenance.
- Allow administrators to assign and verify maintenance work.
- Maintain historical records of faults and maintenance.
- Identify recurring faults for administrative review.

---

## ✨ Key Features

### 1. Authentication and Role-Based Access

- Firebase Authentication.
- Mechanic and Admin roles.
- Role-specific dashboards and permitted actions.
- Firebase Security Rules for data access control.

### 2. Machine Monitoring

- Machine directory and machine details.
- Machine health status.
- Simulated telemetry readings.
- Configurable threshold checks.
- Historical telemetry and fault information.

### 3. Telemetry Monitoring

The MVP supports the following telemetry parameters:

| Parameter | Description |
|---|---|
| Temperature | Simulated machine temperature |
| Vibration | Simulated vibration readings |
| Pressure | Simulated operating pressure |
| RPM | Simulated rotational speed |
| Power Consumption | Simulated power usage |
| Operating Hours | Accumulated operating time |

### 4. Fault Detection

MachSight supports six fault types:

- Overheating
- Excessive Vibration
- High Pressure
- Low Pressure
- Abnormal RPM
- Abnormal Power Consumption

Fault detection is based on configured thresholds. Threshold values are illustrative MVP settings and must not be treated as certified industrial safety limits.

### 5. Alerts and Notifications

- Fault alerts based on threshold violations.
- Warning and critical severity.
- Fault acknowledgement by mechanics.
- Duplicate-alert suppression while the same fault condition remains continuously active.
- Traceable fault records.

### 6. Maintenance Management

Maintenance tasks follow this lifecycle:

`OPEN → ASSIGNED → IN_PROGRESS → RESOLVED → VERIFIED`

- Create maintenance work orders.
- Assign or reassign mechanics.
- Track task progress.
- Add maintenance notes.
- Resolve completed work.
- Verify resolved work as an administrator.

### 7. Recurring Fault Analysis

A fault is classified as recurring when the same machine experiences the same fault type **three or more separate times within a rolling 14-day window**.

Recurring fault analysis supports administrative review and follow-up maintenance planning. It does not automatically shut down or control a machine.

### 8. History and Traceability

- Fault history.
- Maintenance history.
- Fault and maintenance timestamps.
- Traceability of maintenance resolution and verification.

---

## 🔄 Core Workflow

```text
Simulated Machine
        |
        v
Telemetry Collection
        |
        v
Threshold Evaluation
        |
        v
Fault Detected?
      /   \
    No     Yes
    |       |
    v       v
 Continue  Fault Event
 Monitoring    |
               v
           Alert Created
               |
               v
        Mechanic Acknowledges
               |
               v
       Maintenance Work Order
               |
               v
          In Progress
               |
               v
             Resolved
               |
               v
       Admin Verification
               |
               v
        History & Analysis
```

### Machine States

- `NORMAL`
- `WARNING`
- `CRITICAL`
- `MAINTENANCE`
- `OFFLINE`

**Important:** Machine state and fault lifecycle are separate concepts. A machine may return to `NORMAL` while its associated fault record remains open or unresolved.

A continuously active fault condition should not generate unlimited duplicate fault events or alerts.

---

## 👥 User Roles

### Mechanic

- View assigned machines.
- Inspect machine telemetry.
- Receive and acknowledge alerts.
- Review fault details.
- Create or update maintenance work.
- Add maintenance notes.
- Resolve maintenance tasks.

### Admin

- View plant-wide machine status.
- Manage machines and users.
- Configure machine thresholds.
- Assign or reassign maintenance tasks.
- Review active and recurring faults.
- Verify resolved maintenance work.
- Review fault and maintenance history.

---

## 📱 Application Navigation

The application uses four primary navigation destinations:

1. Dashboard
2. Machines
3. Alerts
4. Tasks

Historical information is accessed contextually through relevant machine, fault, maintenance, and recurring-fault views. Logs are not a separate primary navigation destination.

---

## 🛠️ Technology Stack

| Layer | Technology |
|---|---|
| Mobile Application | Flutter |
| Programming Language | Dart |
| Authentication | Firebase Authentication |
| Database | Cloud Firestore |
| Authorization | Firebase Security Rules |
| Real-Time Data | Firestore listeners and streams |
| Source Control | Git and GitHub |

Firebase Storage may be added if the application requires file or image uploads.

---

## 🏗️ Proposed Architecture

```text
Flutter Mobile Application
          |
          v
Application Services
          |
          v
Firebase Authentication
          |
          v
Cloud Firestore
          |
          +--------------------+
          |                    |
          v                    v
Machine & Telemetry       Fault & Alert
Data                      Records
                               |
                               v
                       Maintenance Tasks
                               |
                               v
                       Admin Verification
                               |
                               v
                       History & Analysis
```

The telemetry simulator generates demonstration readings. Application services evaluate readings against configured thresholds and coordinate fault and alert handling.

Firebase Security Rules enforce data access permissions. Client-side role checks alone are not sufficient for authorization.

This is the proposed MVP architecture; implementation details may be refined during System Design.

---

## 🗂️ Proposed Project Structure

```text
Aditya_MachSight_Kalvium-Community/
├── README.md
├── docs/
│   ├── PRD.md
│   ├── system-design.md
│   └── workflow.md
├── assets/
│   ├── images/
│   └── icons/
├── lib/
│   ├── main.dart
│   ├── app.dart
│   ├── core/
│   │   ├── constants/
│   │   ├── theme/
│   │   ├── routing/
│   │   └── utils/
│   ├── models/
│   ├── services/
│   ├── repositories/
│   ├── features/
│   │   ├── auth/
│   │   ├── dashboard/
│   │   ├── machines/
│   │   ├── alerts/
│   │   ├── maintenance/
│   │   └── admin/
│   └── widgets/
├── test/
├── firestore.rules
├── firestore.indexes.json
└── pubspec.yaml
```

This structure is a recommendation and can be adapted to the actual implementation.

---

## 🚀 Getting Started

### Prerequisites

Install the following:

- Flutter SDK
- Dart SDK (included with Flutter)
- Git
- Android Studio or VS Code
- Flutter and Dart IDE extensions
- A Firebase project

Verify your Flutter installation:

```bash
flutter doctor
```

### 1. Clone the Repository

```bash
git clone <YOUR_GITHUB_REPOSITORY_URL>
cd Aditya_MachSight_Kalvium-Community
```

Replace the placeholder URL with the actual repository URL.

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Configure Firebase

Create or select a Firebase project in the Firebase Console.

Configure the Flutter application for Firebase using the official FlutterFire CLI.

Install the CLI if needed:

```bash
dart pub global activate flutterfire_cli
```

Configure Firebase:

```bash
flutterfire configure
```

Follow the prompts to select the Firebase project and supported platforms.

Enable Firebase Authentication providers required by the application, configure Cloud Firestore, and apply the project's Security Rules.

### 4. Run the Application

Check connected devices:

```bash
flutter devices
```

Run the application:

```bash
flutter run
```

**Note:** The application may require Firebase configuration and environment-specific settings before it can run successfully. Follow the setup instructions maintained by the development team.

---

## 🧪 Testing

Run Flutter tests:

```bash
flutter test
```

Check code quality:

```bash
flutter analyze
```

### Recommended Test Coverage

- Authentication and role-based access.
- Machine telemetry rendering.
- Threshold boundary conditions.
- All six fault types.
- Fault and alert creation.
- Duplicate-alert suppression.
- Maintenance lifecycle transitions.
- Admin verification.
- Recurring fault detection.
- Firestore Security Rules.
- Loading, error, empty, and offline states.
- Historical record consistency.

---

## 🔐 Security and Reliability

- Use Firebase Authentication for identity management.
- Enforce authorization through Firebase Security Rules.
- Validate user input and state transitions.
- Avoid exposing credentials or private configuration in source control.
- Keep service-account private keys out of the mobile application.
- Handle Firestore permission errors and network failures.
- Preserve historical fault and maintenance records.
- Use consistent timestamps for fault and maintenance events.
- Test unauthorized access to protected data.

Never commit `.env` files containing secrets, private keys, or service-account credentials.

---

## 📊 Success Criteria

The MVP will be evaluated against the following proposed validation targets:

- At least 95% of injected fault events produce the expected fault record during controlled tests.
- 100% of accepted maintenance tasks follow the defined lifecycle.
- 100% of verified maintenance tasks retain required timestamps.
- Zero duplicate alerts for a continuously active fault condition during controlled tests.
- Correct recurring-fault identification for three or more separate same-machine, same-type events within 14 days.
- Alert visibility within five seconds in the controlled simulator/demo environment, subject to network conditions.

These are proposed MVP targets, not measured results or guarantees.

---

## 🚫 Out of Scope

The MVP does not include:

- Physical IoT sensor integration.
- PLC or industrial protocol integration.
- Direct control or shutdown of machines.
- Machine-learning-based fault prediction.
- Computer vision.
- Certified industrial safety monitoring.

The simulator and threshold rules are intended for software demonstration and validation only.

---

## 👨‍💻 Team

| Member | Responsibility |
|---|---|
| Aditya | Database, backend, data modeling, integration |
| Shourya | Frontend, Flutter UI, navigation, design system |
| Eakamjot Singh | Backend services, fault/alert logic, simulator integration |

**Mentor / Approver:** Monika Yadav

Responsibilities may be refined as implementation progresses.

---

## 📚 Project Documentation

Project documentation should be maintained in the `docs/` directory:

- `PRD.md` — Product Requirements Document
- `system-design.md` — Architecture, data model, and security design
- `workflow.md` — System and user workflow

Figma Design:
[MachSight — Figma](https://www.figma.com/design/7Xh3MUJ5hbfrkDjUmmwrUu/MachSight?node-id=0-1)

---

## 🌱 Development Workflow

Use feature branches and pull requests to keep `main` stable.

Example:

```bash
git checkout -b feat/telemetry-simulator
git add .
git commit -m "feat: implement telemetry simulator"
git push -u origin feat/telemetry-simulator
```

Open a pull request for review before merging.

Suggested branch names:

- `feat/flutter-ui`
- `feat/firebase-auth`
- `feat/firestore-models`
- `feat/telemetry-simulator`
- `feat/fault-alerts`
- `feat/maintenance-workflow`
- `test/integration-tests`

---

## 📄 Project Status

**Project:** MachSight  
**Phase:** Sprint 2 — MVP Development  
**Platform:** Flutter Mobile Application  
**Backend:** Firebase  
**Telemetry:** Simulated  
**Schema Status:** Proposed — Subject to System Design Validation

---

## 📜 License

This project is developed as part of an academic sprint. Add a license only if required or approved by the project team.

---

<p align="center">
  <strong>MachSight</strong><br/>
  Monitor Machines. Detect Faults. Manage Maintenance.
</p>
