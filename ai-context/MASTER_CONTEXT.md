# MachSight — Master AI Context

## Project Identity
- Project: MachSight
- Purpose: Mobile-first manufacturing machine monitoring and maintenance MVP.
- Source of truth: Final PRD v1.2 and approved Figma design.
- Design: https://www.figma.com/design/7Xh3MUJ5hbfrkDjUmmwrUu/MachSight?node-id=0-1

## Technology Stack
- Flutter and Dart
- Firebase Authentication
- Cloud Firestore
- Firebase Security Rules
- Simulated telemetry only

## Team
- Aditya: Database and Backend
- Shourya: Frontend
- Eakamjot Singh: Backend
- Mentor/Approver: Monika Yadav

## Approved Navigation
Exactly four primary tabs:
1. Dashboard
2. Machines
3. Alerts
4. Tasks

Do not add a Logs tab.

## Scope Restrictions
- No physical IoT or PLC integration.
- No machine-control functionality.
- No machine-learning predictions or computer vision.
- Follow the final PRD v1.2 for business rules and workflows.
- Do not implement features until explicitly requested.
- Never claim a feature, test, or configuration is complete without evidence.

## AI Working Protocol
1. Read this file and all relevant files in ai-context/.
2. Read the final PRD v1.2 and relevant Figma specifications before making implementation decisions.
3. Inspect the existing repository and Git status before modifying files.
4. Prefer CLI-generated boilerplate over manually recreating generated files.
5. Never overwrite existing work without inspecting it.
6. Record user prompts, important AI responses, decisions, and file changes in the appropriate context files.
7. Update CURRENT_STATUS.md and NEXT_STEPS.md at the end of each session.
8. Keep secrets, tokens, passwords, and private credentials out of documentation and Git.
9. Distinguish verified facts from proposed designs and incomplete work.

## Current Phase
Day 1: environment setup, dependency installation, project organization, and documentation only.

Feature implementation begins in a later session after the setup and architecture are reviewed.