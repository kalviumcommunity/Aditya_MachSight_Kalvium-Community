import 'package:flutter/material.dart';

import '../../../../core/widgets/placeholder_screen.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlaceholderScreen(
      title: 'Alerts',
      message: 'Fault alerts will be available when alert workflows are implemented.',
      icon: Icons.notifications_none,
    );
  }
}
