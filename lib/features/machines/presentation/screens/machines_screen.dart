import 'package:flutter/material.dart';

import '../../../../core/widgets/placeholder_screen.dart';

class MachinesScreen extends StatelessWidget {
  const MachinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlaceholderScreen(
      title: 'Machines',
      message:
          'Machine records and status details will be added in a future phase.',
      icon: Icons.precision_manufacturing_outlined,
    );
  }
}
