import 'package:flutter/material.dart';

import '../../../../core/widgets/placeholder_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlaceholderScreen(
      title: 'Tasks',
      message: 'Maintenance tasks will be available when task workflows are implemented.',
      icon: Icons.task_alt_outlined,
    );
  }
}
