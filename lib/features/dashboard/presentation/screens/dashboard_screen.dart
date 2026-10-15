import 'package:flutter/material.dart';

import '../../../../core/widgets/placeholder_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlaceholderScreen(
      title: 'Dashboard',
      message: 'Your monitoring overview will appear here in a future phase.',
      icon: Icons.dashboard_outlined,
    );
  }
}
